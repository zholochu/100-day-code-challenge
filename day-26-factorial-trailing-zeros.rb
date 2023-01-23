# Given an integer n, return the number of trailing zeroes in n!.
# Note that n! = n * (n - 1) * (n - 2) * ... * 3 * 2 * 1.
# @param {Integer} n
# @return {Integer}
def trailing_zeroes(n)
  if (n / 5).zero?
    0
  else
    n / 5 + trailing_zeroes(n / 5)
  end
end

# Input: n = 3
# Output: 0
# Explanation: 3! = 6, no trailing zero.

pp trailing_zeroes(5)
