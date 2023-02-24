# A cell (r, c) of an excel sheet is represented as a string "<col><row>" where:
# <col> denotes the column number c of the cell. It is represented by alphabetical letters.
# For example, the 1st column is denoted by 'A', the 2nd by 'B', the 3rd by 'C', and so on.
# <row> is the row number r of the cell. The rth row is represented by the integer r.
# You are given a string s in the format "<col1><row1>:<col2><row2>", where <col1> represents the column c1, <row1> represents the row r1, <col2> represents the column c2, and <row2> represents the row r2, such that r1 <= r2 and c1 <= c2.
# Return the list of cells (x, y) such that r1 <= x <= r2 and c1 <= y <= c2. The cells should be represented as strings in the format mentioned above and be sorted in non-decreasing order first by columns and then by rows.
# @param {String} s
# @return {String[]}
def cells_in_range(s)
  str_array = s.split(":")
  col1 = s[0]
  col2 = s[3]
  row1 = s[1].to_i
  row2 = s[4].to_i

  col_array = Array(col1..col2)
  length = col_array.length - 1

  letters_array = []
  if row1 >= row2
    letters_array << col_array[0]
    col_array[1..-1].each do |element|
      (row1-row2+1).times do
        letters_array << element
      end
    end
  elsif row1 < row2
    (row2-row1+1).times do
      letters_array << col1
    end
    col_array[1..-1].each do |element|
      (row2-row1+1).times do
        letters_array << element
      end
    end
  end

  numbers_array = []
    if row1 >= row2
      numbers_array << row1
      length.times do
        interim_array = Array(row2..row1)
        interim_array.each do |element|
          numbers_array << element
        end
      end
    elsif row1 < row2
      first_column_array = Array(row1..row2)
      first_column_array.each do |element|
        numbers_array << element
      end
      length.times do
        interim_array = Array(row1..row2)
        interim_array.each do |element|
          numbers_array << element
        end
      end
    end
    result = []
    index = 0
    final_length = letters_array.length
    final_length.times do
      result << (letters_array[index] + numbers_array[index].to_s)
      index += 1
    end
    result
end

pp cells_in_range("K1:L2")
pp cells_in_range("A1:F1")

# Example 1:
# Input: s = "K1:L2"
# Output: ["K1","K2","L1","L2"]
# Explanation:
# The above diagram shows the cells which should be present in the list.
# The red arrows denote the order in which the cells should be presented.

# Example 2:
# Input: s = "A1:F1"
# Output: ["A1","B1","C1","D1","E1","F1"]
# Explanation:
# The above diagram shows the cells which should be present in the list.
# The red arrow denotes the order in which the cells should be presented.
