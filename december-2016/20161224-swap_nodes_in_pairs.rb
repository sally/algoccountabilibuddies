# Given a linked list, swap every two adjacent nodes and return its head.
#
# For example,
# Given `1->2->3->4`, you should return the list as `2->1->4->3`.
#
# Your algorithm should use only constant space. You may not modify the values in the list, only nodes itself can be changed.


# Ruby Linked List Node Implementation:


class LinkedListNode

  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end

end

def swap_adjacent_pairs(head)

  return head if head == nil || head.next == nil
  # temp node to hold the predecessor
  pre = LinkedListNode.new(0)
  pre.next = head
  current = pre

  # Traverse through the list 2 @ a time until we hit the tail
  while current.next != nil && current.next.next !=nil
    # a = first node b = second node in a pair
    a = current.next
    b = current.next.next
    # point first node's next to next pair
    a.next = b.next
    # set the first node to become the second node
    current.next = b
    # set the second node to become the first node
    current.next.next = a
    # advance 2 spots forward
    current = current.next.next
  end
    pre.next
    # for easy testing
    # p pre.next.value
    # p pre.next.next.value
    # p pre.next.next.next.value
    # p pre.next.next.next.next.value
end

# vroom
# 2 -> 5 -> 3 -> 7
two = LinkedListNode.new(2)
two.next = five = LinkedListNode.new(5)
five.next = three = LinkedListNode.new(3)
three.next = seven = LinkedListNode.new(7)

p swap_adjacent_pairs(two);
# should return 5 -> 2 -> 7 -> 3

newhead = LinkedListNode.new(5)

p swap_adjacent_pairs(newhead);
# should return 5

# Big O
# Need to traverse the list once so it's O(n) run time
# Only need to store a couple of variables so O(1) space
