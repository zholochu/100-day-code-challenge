# Given a binary array nums and an integer goal, return the number of non-empty subarrays with a sum goal.
# A subarray is a contiguous part of the array.
# @param {Integer[]} nums
# @param {Integer} goal
# @return {Integer}
def num_subarrays_with_sum(nums, goal)
  count = 0
  sum = 0
  prefix_sum = Hash.new(0)

  prefix_sum[0] = 1

  nums.each do |num|
    sum += num
    count += prefix_sum[sum - goal]
    prefix_sum[sum] += 1
  end

  return count
end

# Example 1:
# Input: nums = [1,0,1,0,1], goal = 2
# Output: 4
# Explanation: The 4 subarrays are bolded and underlined below:
# [1,0,1,0,1]
# [1,0,1,0,1]
# [1,0,1,0,1]
# [1,0,1,0,1]

# Example 2:
# Input: nums = [0,0,0,0,0], goal = 0
# Output: 15
