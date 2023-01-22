# Given an integer n, return the number of trailing zeroes in n!.
# Note that n! = n * (n - 1) * (n - 2) * ... * 3 * 2 * 1.
# @param {Integer} n
# @return {Integer}
def trailing_zeroes(n)
  result = 1
  start = n
  return 0 if n > 10**4
  until start < 1
    result = result * start
    start -= 1
  end
  result_reverse = result.to_s.chars.reverse.join.to_i.to_s.length
  result_length = result.to_s.chars.length
  return result_length - result_reverse
end

# Input: n = 3
# Output: 0
# Explanation: 3! = 6, no trailing zero.

pp trailing_zeroes(5)
