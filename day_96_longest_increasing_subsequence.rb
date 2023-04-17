# Given an integer array nums, return the length of the longest strictly increasing
# subsequence.
# @param {Integer[]} nums
# @return {Integer}
def length_of_lis(nums)
  n = nums.length
  dp = Array.new(n, 1)

  for i in 1...n
    for j in 0...i
      if nums[j] < nums[i]
        dp[i] = [dp[i], dp[j]+1].max
      end
    end
  end

  return dp.max
end
# Example 1:
# Input: nums = [10,9,2,5,3,7,101,18]
# Output: 4
# Explanation: The longest increasing subsequence is [2,3,7,101], therefore the length is 4.

# Example 2:
# Input: nums = [0,1,0,3,2,3]
# Output: 4

# Example 3:
# Input: nums = [7,7,7,7,7,7,7]
# Output: 1
