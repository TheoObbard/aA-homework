class Stack

  attr_accessor :the_stack

  def initialize
    @the_stack = []
  end

  def push(el)
    @the_stack.push(el)
  end

  def pop
    @the_stack.pop
  end

  def peek
    return @the_stack[-1]
  end
end

class Queue

  attr_accessor :queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.unshift(el)
  end

  def dequeue
    @queue.pop
  end

  def peek
    return @queue[-1]
  end

end

class Map

  attr_accessor :map

  def initialize
    @map = []
  end

  def set(key, value)
    @map.each_with_index do |pair, ind|
      return @map[ind] == [key, value] if key == pair[0]
    end
    @map << [key, value]
  end

  def get(key)
    @map.each do |pair|
      return pair[1] if pair[0] == key
    end
    return nil
  end

  def delete(key)
    @map.each do |pair|
      @map.delete(pair) if pair[0] == key
    end
  end

  def show
    p @map
  end

end

m = Map.new


# p m.map
# m.set("thing", "gy")
# p m.map
# m.set(:sym, "bol")
# p m.map
# m.set(800, "lupolicut")
# p m.map
# p m.get(:sym)
# p m.map
# m.delete("thing")
# p m.map
# m.show
