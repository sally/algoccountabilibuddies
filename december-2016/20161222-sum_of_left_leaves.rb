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

def is_a_leaf(node)
  if !node
    false
  elsif !node.left && !node.right
    true
  end
end

def sum_of_left_leaves(root)
  sum = 0
  if root
    if is_a_leaf(root.left)
      sum += root.left.value
    else
      sum += sum_of_left_leaves(root.left)
    end
    sum += sum_of_left_leaves(root.right)
  end
  sum
end

###########################
##  ｄｒｉｖｅｒ　ｃｏｄｅ  ##
###########################

root0 = BinaryTreeNode.new(3)
root0.insert_left(9)
twenty = root0.insert_right(20)
twenty.insert_left(15)
twenty.insert_right(7)

puts sum_of_left_leaves(root0)

root1 = BinaryTreeNode.new(5)
root1.insert_left(3)
eight = root1.insert_right(8)
seven = eight.insert_left(7)
twelve = eight.insert_right(12)
ten = twelve.insert_left(10)
ten.insert_left(9)
ten.insert_right(11)

puts sum_of_left_leaves(root1)
