# An ugly number is a positive integer whose prime factors are limited to 2, 3, and 5.
# Given an integer n, return true if n is an ugly number.
# @param {Integer} n
# @return {Boolean}
def is_ugly(n)
  factors = []
  (1..n).each do |i|
    if n % i == 0
      factors << i
    end
  end
  return factors
end

pp is_ugly(6)
pp is_ugly(14)
pp is_ugly(1)

# Example 1:
# Input: n = 6
# Output: true
# Explanation: 6 = 2 × 3

# Example 2:
# Input: n = 1
# Output: true
# Explanation: 1 has no prime factors, therefore all of its prime factors are limited to 2, 3, and 5.

# Example 3:
# Input: n = 14
# Output: false
# Explanation: 14 is not ugly since it includes the prime factor 7.
