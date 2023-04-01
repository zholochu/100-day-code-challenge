# Given an m x n matrix mat, return an array of all the elements of the array in a diagonal order.
# @param {Integer[][]} mat
# @return {Integer[]}
def find_diagonal_order(mat)
  return [] if mat.empty?

  m, n = mat.length, mat[0].length

  row, col, dir = 0, 0, 1

  result = []

  (m * n).times do
    result << mat[row][col]

    if dir == 1
      row -= 1
      col += 1
    else
      row += 1
      col -= 1
    end

    if row >= m
      row = m - 1
      col += 2
      dir = -dir
    elsif col >= n
      col = n - 1
      row += 2
      dir = -dir
    elsif row < 0
      row = 0
      dir = -dir
    elsif col < 0
      col = 0
      dir = -dir
    end
  end

  return result
end


pp find_diagonal_order([[1,2,3],[4,5,6],[7,8,9]])
pp find_diagonal_order([[1,2],[3,4]])
# Example 1:
# Input: mat = [[1,2,3],[4,5,6],[7,8,9]]
# Output: [1,2,4,7,5,3,6,8,9]

# Example 2:
# Input: mat = [[1,2],[3,4]]
# Output: [1,2,3,4]
