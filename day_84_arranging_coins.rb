# You have n coins and you want to build a staircase with these coins. The staircase consists of k rows where the ith row has exactly i coins. The last row of the staircase may be incomplete.
# Given the integer n, return the number of complete rows of the staircase you will build.
# @param {Integer} n
# @return {Integer}
def arrange_coins(n)
  left, right = 0, n

  while left <= right do
    mid = (left + right) / 2
    current_sum = mid * (mid + 1) / 2

    if current_sum == n
      return mid
    elsif current_sum > n
      right = mid - 1
    else
      left = mid + 1
    end
  end

  return right
end


pp arrange_coins(5)
pp arrange_coins(8)

# Example 1:
# Input: n = 5
# Output: 2
# Explanation: Because the 3rd row is incomplete, we return 2.

# Example 2:
# Input: n = 8
# Output: 3
# Explanation: Because the 4th row is incomplete, we return 3.
