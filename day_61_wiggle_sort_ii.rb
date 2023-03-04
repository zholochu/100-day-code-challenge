# Given an integer array nums, reorder it such that nums[0] < nums[1] > nums[2] < nums[3]....
# You may assume the input array always has a valid answer.
# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def wiggle_sort(nums)
  nums = nums.sort
  half = nums.length / 2
  bigger_nums = nums[half..-1].reverse
  smaller_nums = nums[0...half]

  index = 0
  result = []
  bigger_nums.length.times do
    result << smaller_nums[index]
    result << bigger_nums[index]
    index += 1
  end
  result
end

pp wiggle_sort([1,5,1,1,6,4])
pp wiggle_sort([1,3,2,2,3,1])
# pp wiggle_sort([1,2,3,4,5,6,7])

# Example 1:
# Input: nums = [1,5,1,1,6,4]
# Output: [1,6,1,5,1,4]
# Explanation: [1,4,1,5,1,6] is also accepted.

# Example 2:
# Input: nums = [1,3,2,2,3,1]
# Output: [2,3,1,3,1,2]
