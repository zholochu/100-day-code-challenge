# You are given a positive integer n. Each digit of n has a sign according to the following rules:
# The most significant digit is assigned a positive sign.
# Each other digit has an opposite sign to its adjacent digits.
# Return the sum of all digits with their corresponding sign.
# @param {Integer} n
# @return {Integer}
def alternate_digit_sum(n)
  n_array = n.to_s.chars
  result = []
  n_array.each_index do |index|
    if index.even?
      result << n_array[index].to_i
    else
      element = -n_array[index].to_i
      result << element
    end
  end
  result.sum
end

pp alternate_digit_sum(521)
pp alternate_digit_sum(111)
pp alternate_digit_sum(886996)


# Example 1:
# Input: n = 521
# Output: 4
# Explanation: (+5) + (-2) + (+1) = 4.

# Example 2:
# Input: n = 111
# Output: 1
# Explanation: (+1) + (-1) + (+1) = 1.

# Example 3:
# Input: n = 886996
# Output: 0
# Explanation: (+8) + (-8) + (+6) + (-9) + (+9) + (-6) = 0.
