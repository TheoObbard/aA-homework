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

stack = Stack.new

p stack.the_stack
stack.push(5)
p stack.the_stack
stack.push(8)
p stack.the_stack
stack.pop
p stack.the_stack
stack.push(4)
stack.push(5)
stack.push(6)
p stack.the_stack
p stack.peek
p stack.the_stack
