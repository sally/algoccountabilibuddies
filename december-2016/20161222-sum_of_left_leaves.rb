# Find the sum of all left leaves in a given binary tree.

# make a treenode class

class BinaryTreeNode
  attr_accessor :left, :right, :value

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

  def insert_left(value)
    @left = BinaryTreeNode.new(value)
    return @left
  end

  def insert_right(value)
    @right = BinaryTreeNode.new(value)
    return @right
  end
end

# method that takes root of tree and returns the sum of all left leaves
# make it a recursive method that runs on the right leaf
# base case is when there is no left leaf


def sum_of_left_leaves(root)
  # set default sum value to 0
  sum = 0
  return 0 if root == nil

  # left
  # when left node is not empty
  if root.left != nil
    #check to see if the current node is a left leaf
    if root.left.left == nil && root.left.right == nil
      # add the left leaf value to sum if it is
      sum += root.left.value
    else
      # else run the method on the left of the node
      sum += sum_of_left_leaves(root.left)
    end
  end
  # right
  sum += sum_of_left_leaves(root.right)
end


#vroom vroom
root1 = BinaryTreeNode.new(5)
root1.insert_left(3)
eight = root1.insert_right(8)
seven = eight.insert_left(7)
twelve = eight.insert_right(12)
ten = twelve.insert_left(10)
ten.insert_left(9)
ten.insert_right(11)

p sum_of_left_leaves(root1)

root2 = BinaryTreeNode.new(1)
root2.insert_left(3)
root2.insert_right(2)

p sum_of_left_leaves(root2)

root3 = BinaryTreeNode.new(7)
root3.insert_left(2)

p sum_of_left_leaves(root3)

p sum_of_left_leaves(nil)

# Big O
# Time - Have to traverse through the entire tree w/ recursion so is O(n)
# Space - Only have to hold the value of sum so O(1)
