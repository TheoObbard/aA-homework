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

q = Queue.new

p q.queue
q.enqueue(4)
q.enqueue(5)
q.enqueue(6)
p q.queue
q.dequeue
p q.queue
p q.peek
