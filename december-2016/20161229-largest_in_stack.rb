# Source: Interview Cake
#
# You want to be able to access the largest element in a stack.
#
#
# Use your Stack class to implement a function `get_max()` that returns the largest element in the stack. `get_max()` should not remove the item.
#
# Your stacks will contain only integers.

class Stack

  # initialize an empty array
  def initialize
      @items = []
      @max_stack = []
  end

  # push a new item to the last index
  def push(item)
      @items.push(item)
      if @max_stack.empty? || item > @max_stack.last
        @max_stack.push(item)
      end
  end

  # remove the last item
  def pop()
    if @items.empty?
        return nil
    elsif @max_stack.last == @items.last
      @max_stack.pop()
    end

    return @items.pop()
  end

  # see what the last item is
  def peek()
      if @items.empty?
          return nil
      end
      return @items[-1]
  end

  def get_max(stack)
    @maxs_stack.peek()
  end
end
