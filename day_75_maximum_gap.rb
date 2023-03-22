# Given an integer array nums, return the maximum difference between two successive elements in its sorted form. If the array contains less than two elements, return 0.
# You must write an algorithm that runs in linear time and uses linear extra space.
# @param {Integer[]} nums
# @return {Integer}
def maximum_gap(nums)
  nums = nums.sort
  gap = 0
  if nums.length < 2
    gap
  else
    index = 0
    length = nums.length - 1
    length.times do
      interim = nums[index+1] - nums[index]
      if gap < interim
        gap = interim
      end
      index += 1
    end
    gap
  end
end

pp maximum_gap([3,6,9,1])
pp maximum_gap([10])

# Example 1:
# Input: nums = [3,6,9,1]
# Output: 3
# Explanation: The sorted form of the array is [1,3,6,9], either (3,6) or (6,9) has the maximum difference 3.

# Example 2:
# Input: nums = [10]
# Output: 0
# Explanation: The array contains less than 2 elements, therefore return 0.
