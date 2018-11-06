require 'sqlite3'
require 'singleton'

class PlayDBConnection < SQLite3::Database
  include Singleton

  def initialize
    super('plays.db')
    self.type_translation = true
    self.results_as_hash = true
  end
end

class Play
  attr_accessor :title, :year, :playwright_id

  def self.all
    data = PlayDBConnection.instance.execute("SELECT * FROM plays")
    data.map { |datum| Play.new(datum) }
  end

  def self.find_by_title(title)
    PlayDBConnection.instance.execute(<<-SQL, title)
      SELECT *
      FROM plays
      WHERE title = ?
    SQL
  end

  def self.find_by_playwright(name)
    PlayDBConnection.instance.execute(<<-SQL, name)
      SELECT *
      FROM plays p
      JOIN playwrights w
      ON p.playwright_id = w.id
      WHERE w.name = ?
    SQL
  end

  def initialize(options)
    @id = options['id']
    @title = options['title']
    @year = options['year']
    @playwright_id = options['playwright_id']
  end

  def create
    raise "#{self} already in database" if self.id
    PlayDBConnection.instance.execute(<<-SQL, self.title, self.year, self.playwright_id)
      INSERT INTO
        plays (title, year, playwright_id)
      VALUES
        (?, ?, ?)
    SQL
    self.id = PlayDBConnection.instance.last_insert_row_id
  end

  def update
    raise "#{self} not in database" unless self.id
    PlayDBConnection.instance.execute(<<-SQL, self.title, self.year, self.playwright_id, self.id)
      UPDATE
        plays
      SET
        title = ?, year = ?, playwright_id = ?
      WHERE
        id = ?
    SQL
  end
end

class Playwrights

  def initialize; end
  # Playwright#new (this is the initialize method)


  def self.all
    PlayDBConnection.instance.execute(<<-SQL)
      SELECT *
      FROM playwrights
    SQL
  end
  # Playwright::all

  def self.find_by_name(name)
    PlayDBConnection.instance.execute(<<-SQL, name)
      SELECT *
      FROM playwrights
      WHERE name = ?
    SQL
  end
  # Playwright::find_by_name(name)

  def create(name, birth_year = nil)
    PlayDBConnection.instance.execute(<<-SQL, name, birth_year)
      INSERT INTO playwrights (name, birth_year) VALUES (?, ?)
    SQL
  end
  # Playwright#create

  def update(id, name, birth_year)
    PlayDBConnection.instance.execute(<<-SQL, name, birth_year, id)
      UPDATE playwrights
      SET name = ?, birth_year = ?
      WHERE id = ?
    SQL
  end
  # Playwright#update

  def get_plays(name)
    PlayDBConnection.instance.execute(<<-SQL, name)
      SELECT title
      FROM playwrights w
      JOIN plays p
      ON w.id = p.playwright_id
      WHERE name = ?
    SQL
  end
  # Playwright#get_plays (returns all plays written by playwright)

end
