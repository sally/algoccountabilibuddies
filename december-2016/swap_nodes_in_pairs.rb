# Given a linked list, swap every two adjacent nodes and return its head.
#
# For example,
# Given `1->2->3->4`, you should return the list as `2->1->4->3`.
#
# Your algorithm should use only constant space. You may not modify the values in the list, only nodes itself can be changed.

class LinkedListNode

  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

# Pseudocode: check if there exists a current_node.next.next element - if there is, then we can swap pairs
# if not, then this means that we've reached the end

# to swap pairs:
  # need a variable to keep the two nodes, and the more advanced node's successor, and also the less advance's node's predecessor (if it exists - for the head, it won't)

def swap_nodes_in_pairs(head)

end
