Source: Interview Cake

You want to be able to access the largest element in a stack.

You've already implemented this Stack class:

```ruby
  class Stack

    # initialize an empty array
    def initialize
        @items = []
    end

    # push a new item to the last index
    def push(item)
        @items.push(item)
    end

    # remove the last item
    def pop()
        # if the stack is empty, return nil
        # (it would also be reasonable to throw an exception)
        if @items.empty?
            return nil
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
end
```

Use your Stack class to implement a function `get_max()` that returns the largest element in the stack. `get_max()` should not remove the item.

Your stacks will contain only integers.
