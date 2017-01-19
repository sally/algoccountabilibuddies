# Binary Tree Node Class implementation

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

# pre order

def pre_order(root)
  raise "Cannot traverse an empty tree" if root.nil?

  values = []

  values.push(root.value)

  pre_order_subtree(root.left, values) if root.left
  pre_order_subtree(root.right, values) if root.right

  values
end

def pre_order_subtree(node, values = [])
  values.push(node.value)
  pre_order_subtree(node.left, values) if node.left
  pre_order_subtree(node.right, values) if node.right
end

def pre_order_lambda(root)
  raise "Cannot traverse an empty tree" if root.nil?

  values = []

  traverse = lambda do |node|
    return unless node
    values << node.value
    traverse.call(node.left)
    traverse.call(node.right)
  end

  traverse.call(root)

  values
end

# in order

def in_order(root)
  raise "Cannot traverse an empty tree" if root.nil?

  values = []

  in_order_subtree(root.left, values) if root.left
  values << root.value
  in_order_subtree(root.right, values) if root.right

  values
end

def in_order_subtree(node, values = [])
  in_order_subtree(node.left, values) if node.left
  values << node.value
  in_order_subtree(node.right, values) if node.right
end

def in_order_lambda(root)
  raise "Cannot traverse an empty tree" if root.nil?

  values = []

  traverse = lambda do |node|
    return unless node
    traverse.call(node.left)
    values << node.value
    traverse.call(node.right)
  end

  traverse.call(root)

  values
end

# post order

def post_order(root)
  raise "Cannot traverse an empty tree" if root.nil?

  values = []

  post_order_subtree(root.left, values) if root.left
  post_order_subtree(root.right, values) if root.right
  values << root.value
end

def post_order_subtree(node, values = [])
  post_order_subtree(node.left, values) if node.left
  post_order_subtree(node.right, values) if node.right
  values << node.value
end

def post_order_lambda(root)
  raise "Cannot traverse an empty tree" if root.nil?

  values = []

  traverse = lambda do |node|
    return unless node
    traverse.call(node.left)
    traverse.call(node.right)
    values << node.value
  end

  traverse.call(root)

  values
end

# breadth first

def breadth_traversal(root)
  raise "Please enter a binary tree with at least one node" if root.nil?

  values = []
  queue = []

  queue << root

  until queue.empty?
    current_node = queue.shift
    values << current_node.value
    queue << current_node.left if current_node.left
    queue << current_node.right if current_node.right
  end

  values
end
