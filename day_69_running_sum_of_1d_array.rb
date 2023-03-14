# Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).
# Return the running sum of nums.
# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
  start = 0
  finish = 0
  length = nums.length
  result = []
  length.times do
    running = nums[start..finish].sum
    result << running
    finish += 1
  end
  result
end

pp running_sum([1,2,3,4])
pp running_sum([1,1,1,1,1])
pp running_sum([3,1,2,10,1])

# Example 1:
# Input: nums = [1,2,3,4]
# Output: [1,3,6,10]
# Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].

# Example 2:
# Input: nums = [1,1,1,1,1]
# Output: [1,2,3,4,5]
# Explanation: Running sum is obtained as follows: [1, 1+1, 1+1+1, 1+1+1+1, 1+1+1+1+1].

# Example 3:
# Input: nums = [3,1,2,10,1]
# Output: [3,4,6,16,17]
