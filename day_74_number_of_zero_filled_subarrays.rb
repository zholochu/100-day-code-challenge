# Given an integer array nums, return the number of subarrays filled with 0.
# A subarray is a contiguous non-empty sequence of elements within an array.
# @param {Integer[]} nums
# @return {Integer}
def zero_filled_subarray(nums)
  result = []
  index = 0
  while index < nums.length do
    count = 0
    while index < nums.length and nums[index].zero?
      count += 1
      index += 1
    end
    index += 1
    result << count
  end
  result.map { |element| element * (element + 1) / 2 }.sum
end

pp zero_filled_subarray([1,3,0,0,2,0,0,4])
pp zero_filled_subarray([0,0,0,2,0,0])
pp zero_filled_subarray([2,10,2019])

# Example 1:
# Input: nums = [1,3,0,0,2,0,0,4]
# Output: 6
# Explanation:
# There are 4 occurrences of [0] as a subarray.
# There are 2 occurrences of [0,0] as a subarray.
# There is no occurrence of a subarray with a size more than 2 filled with 0. Therefore, we return 6.

# Example 2:
# Input: nums = [0,0,0,2,0,0]
# Output: 9
# Explanation:
# There are 5 occurrences of [0] as a subarray.
# There are 3 occurrences of [0,0] as a subarray.
# There is 1 occurrence of [0,0,0] as a subarray.
# There is no occurrence of a subarray with a size more than 3 filled with 0. Therefore, we return 9.

# Example 3:
# Input: nums = [2,10,2019]
# Output: 0
# Explanation: There is no subarray filled with 0. Therefore, we return 0.
