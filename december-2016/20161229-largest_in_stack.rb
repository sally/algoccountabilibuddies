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

    def get_max
      
    end
end

###########################
##  ｄｒｉｖｅｒ　ｃｏｄｅ  ##
###########################
