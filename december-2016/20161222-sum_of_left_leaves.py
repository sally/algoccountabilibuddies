# Sum of Left Leaves
#
# from [1337code](https://leetcode.com/problems/sum-of-left-leaves/)
#
# ----
#
# Find the sum of all left leaves in a given binary tree.
#
# **Example Binary Tree**
#
# ```
#     3
#    / \
#   9  20
#     /  \
#    15   7
#
# There are two left leaves in the binary tree, with values 9 and 15 respectively. Return 24.
# ```
#
# 1337code provides a TreeNode class
#
# ----
#
# **Example Christmas Tree**
#
# ```
#      *
#     /.\
#    /..'\
#    /'.'\
#   /.''.'\
#   /.'.'.\
#  /'.''.'.\
#  ^^^[ ]^^^
#
#  ```
#
# **For Driver Code:**
#
# Ruby Implementation of TreeNode class:
#
# ```ruby
# class BinaryTreeNode
#   attr_accessor :left, :right, :value
#
#   def initialize(value)
#     @value = value
#     @left = nil
#     @right = nil
#   end
#
#   def insert_left(value)
#     @left = BinaryTreeNode.new(value)
#     return @left
#   end
#
#   def insert_right(value)
#     @right = BinaryTreeNode.new(value)
#     return @right
#   end
# end
# ```
#
# Some example Ruby binary trees for your driver code purposes
#
# Example 0:
#
# ```ruby
# #    3
# #   / \
# #  9  20
# #    /  \
# #   15   7
# ```
#
# ```ruby
# root0 = BinaryTreeNode.new(3)
# root0.insert_left(9)
# twenty = root0.insert_right(20)
# twenty.insert_left(15)
# twenty.insert_right(7)
# ```
#
# Example 1:
#
# ```ruby
# #       5
# #     /   \
# #    3     8
# #         / \
# #        7   12
# #           /
# #          10
# #         /  \
# #        9    11
# ```
#
# ```ruby
# root1 = BinaryTreeNode.new(5)
# root1.insert_left(3)
# eight = root1.insert_right(8)
# seven = eight.insert_left(7)
# twelve = eight.insert_right(12)
# ten = twelve.insert_left(10)
# ten.insert_left(9)
# ten.insert_right(11)
# ```
#
# Example 2:
#
# ```ruby
# # 2
# ```
#
# ```ruby
# root2 = BinaryTreeNode.new(2)
# ```
#
# Example 3:
#
# ```ruby
# #     5
# #    /
# #   3
# #  / \
# # 1   6
# ```
#
# ```ruby
# root1 = BinaryTreeNode.new(5)
# three = root1.insert_left(3)
# three.insert_left(1)
# three.insert_right(6)
# ```
#
# Example 4:
#
# ```ruby
# #   1
# #  / \
# # 3   2
# ```
#
# ```ruby
# root1 = BinaryTreeNode.new(1)
# root1.insert_left(3)
# root1.insert_right(2)
# ```

# need to represent the tree with three attributes left node, right node, and node's data

class Node:
    # create a new Node
    def __init__(self, data):
        self.left = None
        self.right = None
        self.data = data

    # function to check if the node is a leaf (no children) or not
def is_leaf(node):
    if node is None:
        return False
    if node.left is None and node.right is None:
        return True
    return False

    # returns the sum of all the left leaves in a given tree
def left_leaves_Sum(root):
    # initialize the result
    result = 0

    # update result if root is not None
    if root is not None:
        # if left of root is None, then add key of left child
        if is_leaf(root.left):
            result += root.left.data
        else:
            # recursion for left child of root
            result += left_leaves_Sum(root.left)
        # recursion for right child of root and update result
        result += left_leaves_Sum(root.right)
    return result

# test 1
root = Node(3)
root.left = Node(9)
root.right = Node(20)
root.right.left = Node(15)
root.right.right = Node(7)
print ("The total is", left_leaves_Sum(root))

# test 2
root_2 = Node(20)
root_2.left = Node(9)
root_2.right = Node(49)
root_2.right.left = Node(23)
root_2.right.right = Node(52)
root_2.right.right.left = Node(50)
root_2.left.left = Node(5)
root_2.left.right = Node(12)
root_2.left.right.right = Node(12)
print("The total of the second tree is", left_leaves_Sum(root_2))


# test 3: if there are no left leaves
root_3 = Node(6)
root_3.right = Node(12)
root_3.right.right = Node(30)
print("The total of the third tree is", left_leaves_Sum(root_3))
