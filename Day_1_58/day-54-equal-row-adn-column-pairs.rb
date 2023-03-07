# Given a 0-indexed n x n integer matrix grid, return the number of pairs (ri, cj) such that row ri and column cj are equal.
# A row and column pair is considered equal if they contain the same elements in the same order (i.e., an equal array).
# @param {Integer[][]} grid
# @return {Integer}
def equal_pairs(grid)
  vertical_grid = []
  index = 0
  length = grid.length
  length.times do
    interim_array = []
    grid.each do |element|
      interim_array << element[index]
    end
    vertical_grid << interim_array
    index += 1
  end
  # vertical_grid
  # grid.length == vertical_grid.length
  result = 0
  grid.each do |element|
    compare_index = 0
    length.times do
      if element == vertical_grid[compare_index]
        result += 1
        compare_index += 1
      else
        compare_index += 1
      end
    end
  end
  result
end

pp equal_pairs([[3,2,1],[1,7,6],[2,7,7]])
pp equal_pairs([[3,1,2,2],[1,4,4,5],[2,4,2,2],[2,4,2,2]])

# Example 1:
# Input: grid = [[3,2,1],[1,7,6],[2,7,7]]
# Output: 1
# Explanation: There is 1 equal row and column pair:
# - (Row 2, Column 1): [2,7,7]

# Example 2:
# Input: grid = [[3,1,2,2],[1,4,4,5],[2,4,2,2],[2,4,2,2]]
# Output: 3
# Explanation: There are 3 equal row and column pairs:
# - (Row 0, Column 0): [3,1,2,2]
# - (Row 2, Column 2): [2,4,2,2]
# - (Row 3, Column 2): [2,4,2,2]
