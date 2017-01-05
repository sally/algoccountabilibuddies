class LinkedListNode

  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

def swap_pairs(head)
    if (head == nil) || (head.next == nil)
       return head.value
    end
    curr = head
    head = curr.next
    until curr.next.value == nil

        # temp1 = curr.next
        # curr.next = temp1.next
        # temp1.next = curr
        # curr = curr.next.next

        # temp = curr.next
        # temp2 = temp.next
        # temp.next = curr
        # curr.next = temp2.next
        # curr = temp2.next.next
        # temp2.next = temp2

        temp1 = head.next
        head.next = curr
        curr.next = temp1

    end

    puts head.value
    puts head.next.value
    puts head.next.next.value
    puts head.next.next.next.value
end

###########################
##  ｄｒｉｖｅｒ　ｃｏｄｅ  ##
###########################

a = LinkedListNode.new(1)
a.next = LinkedListNode.new(2)
a.next.next = LinkedListNode.new(3)
a.next.next.next = LinkedListNode.new(4)
puts swap_pairs(a)


b = LinkedListNode.new(3)
puts swap_pairs(b)

# DONT KNOW HOW TO PROPERLY TEST. NEED TO ALTER HEAD.NEXT INSIDE OF UNTIL LOOP
