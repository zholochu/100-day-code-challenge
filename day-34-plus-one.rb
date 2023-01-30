# You are given a large integer represented as an integer array digits, where each digits[i] is the ith digit of the integer. The digits are ordered from most significant to least significant in left-to-right order. The large integer does not contain any leading 0's.
# Increment the large integer by one and return the resulting array of digits.
# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  integer = digits.join.to_i + 1
  i_array = integer.to_s.chars
  result = []
  i_array.each { |element| result << element.to_i }
  result
end
