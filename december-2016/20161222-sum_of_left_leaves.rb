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

def sum_of_left_leaves(root)
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
