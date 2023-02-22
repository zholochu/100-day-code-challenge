# Given an array of integers nums, sort the array in increasing order based on the frequency of the values. If multiple values have the same frequency, sort them in decreasing order.
# Return the sorted array.
# @param {Integer[]} nums
# @return {Integer[]}
def frequency_sort(nums)
  nums_hash = Hash.new(0)
  nums.each { |num| nums_hash[num] += 1 }
  sorted_nums = nums.sort_by { |num| [nums_hash[num], -num] }
  return sorted_nums
end

pp frequency_sort([1,1,2,2,2,3])
pp frequency_sort([2,3,1,3,2])
pp frequency_sort([-1,1,-6,4,5,-6,1,4,1])

# sorted_hash = my_hash.sort_by { |key, value| -value }

# Example 1:
# Input: nums = [1,1,2,2,2,3]
# Output: [3,1,1,2,2,2]
# Explanation: '3' has a frequency of 1, '1' has a frequency of 2, and '2' has a frequency of 3.

# Example 2:
# Input: nums = [2,3,1,3,2]
# Output: [1,3,3,2,2]
# Explanation: '2' and '3' both have a frequency of 2, so they are sorted in decreasing order.

# Example 3:
# Input: nums = [-1,1,-6,4,5,-6,1,4,1]
# Output: [5,-1,4,4,-6,-6,1,1,1]
