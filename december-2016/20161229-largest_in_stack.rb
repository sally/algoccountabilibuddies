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

    def get_max()
      @max = 0
      @items.each do |num|
        if num > @max
          @max = num
        else
          @items.reverse.pop
        end
      end
      @max
    end
end

###########################
##  ｄｒｉｖｅｒ　ｃｏｄｅ  ##
###########################

s = Stack.new()
s.push(100000)
s.push(1)
s.push(2)
s.push(5)
s.push(999999999)
s.push(3)
s.push(4)
s.push(100)
puts s.get_max
