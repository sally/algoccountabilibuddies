Source: No source.

Write methods for traversing a binary-tree in the following ways:
1. depth-first (pre-order)
2. depth-first (in-order)
3. depth-first (post-order)
4. breadth-first

See [sum of left leaves](https://github.com/parkyngj/algoccountabilibuddies/blob/master/december-2016/20161222-sum_of_left_leaves.md) problem for binary tree node implementation and example trees.

More examples:

```
# Example:
#        F
#      /   \
#     D     J
#    / \   / \
#   B   E G   K
#  / \     \
# A   C     I
#          /
#         H

root = BinaryTreeNode.new('F')
d = root.insert_left('D')
j = root.insert_right('J')
b = d.insert_left('B')
e = d.insert_right('E')
a = b.insert_left('A')
c = b.insert_right('C')
g = j.insert_left('G')
k = j.insert_right('K')
i = g.insert_right('I')
h = i.insert_left('H')
```
