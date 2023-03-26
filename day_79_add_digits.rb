# Given an integer num, repeatedly add all its digits until the result has only one digit, and return it.
# @param {Integer} num
# @return {Integer}
def add_digits(num)
  until num.to_s.length == 1
    num = num.to_s.chars.map {|element| element = element.to_i}.sum
  end
  num
end

# Example 1:
# Input: num = 38
# Output: 2
# Explanation: The process is
# 38 --> 3 + 8 --> 11
# 11 --> 1 + 1 --> 2
# Since 2 has only one digit, return it.

# Example 2:
# Input: num = 0
# Output: 0
