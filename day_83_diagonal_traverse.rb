# Given an m x n matrix mat, return an array of all the elements of the array in a diagonal order.
# @param {Integer[][]} mat
# @return {Integer[]}
def find_diagonal_order(mat)
  total = mat.length * mat[0].length
end

pp find_diagonal_order([[1,2,3],[4,5,6],[7,8,9]])
pp find_diagonal_order([[1,2],[3,4]])
# Example 1:
# Input: mat = [[1,2,3],[4,5,6],[7,8,9]]
# Output: [1,2,4,7,5,3,6,8,9]

# Example 2:
# Input: mat = [[1,2],[3,4]]
# Output: [1,2,3,4]
