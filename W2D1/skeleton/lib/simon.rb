class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over == true
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    unless @game_over == true
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    p seq.last
  end

  def require_sequence
    p "Please enter the color...s"
    @seq.each do |color|
      ans = gets.chomp
      unless ans == color
        @game_over = true
        break
      end
    end
    system("clear")
    p @game_over ? "Aaaaaaand you messed up." : "Noice, on to the next!"
  end

  def add_random_color
    @seq.push(COLORS.sample)
  end

  def round_success_message
    p "You've survived this round... but will you survive the next?"
  end

  def game_over_message
    p "Womp womp, you lost :( "
  end

  def reset_game
    @sequence_length = 1
    @seq = []
    @game_over = false
  end
end

# testing = Simon.new
# testing.play
