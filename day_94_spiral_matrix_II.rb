# Given a positive integer n, generate an n x n matrix filled with elements from 1 to n2 in spiral order.
def generate_matrix(n)
  matrix = Array.new(n) { Array.new(n, 0) }
  num = 1
  row_start = 0
  row_end = n - 1
  col_start = 0
  col_end = n - 1

  while row_start <= row_end && col_start <= col_end
    (col_start..col_end).each do |j|
      matrix[row_start][j] = num
      num += 1
    end
    row_start += 1

    (row_start..row_end).each do |i|
      matrix[i][col_end] = num
      num += 1
    end
    col_end -= 1

    if row_start <= row_end
      (col_end).downto(col_start).each do |j|
        matrix[row_end][j] = num
        num += 1
      end
      row_end -= 1
    end

    if col_start <= col_end
      (row_end).downto(row_start).each do |i|
        matrix[i][col_start] = num
        num += 1
      end
      col_start += 1
    end
  end

  matrix
end



# Example 1:
# Input: n = 3
# Output: [[1,2,3],[8,9,4],[7,6,5]]

# Example 2:
# Input: n = 1
# Output: [[1]]
