# Given a binary tree, find its minimum depth.
# The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.
# Note: A leaf is a node with no children.

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}

def min_depth(root)
  return 0 if !root

  left_depth = min_depth(root.left)
  right_depth = min_depth(root.right)

  if !root.left || !root.right
    return left_depth + right_depth + 1
  else
    return [left_depth, right_depth].min + 1
  end
end
