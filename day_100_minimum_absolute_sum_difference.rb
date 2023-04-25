# You are given two positive integer arrays nums1 and nums2, both of length n.
# The absolute sum difference of arrays nums1 and nums2 is defined as the sum of |nums1[i] - nums2[i]| for each 0 <= i < n (0-indexed).
# You can replace at most one element of nums1 with any other element in nums1 to minimize the absolute sum difference.
# Return the minimum absolute sum difference after replacing at most one element in the array nums1. Since the answer may be large, return it modulo 109 + 7.
# |x| is defined as:
# x if x >= 0, or
# -x if x < 0.
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
def min_absolute_sum_diff(nums1, nums2)
  n = nums1.length
  sorted_nums1 = nums1.sort
  diff = 0
  max_diff = 0
  for i in 0...n
      abs_diff = (nums1[i] - nums2[i]).abs
      diff += abs_diff
      j = binary_search(sorted_nums1, nums2[i])
      if j < n
          max_diff = [max_diff, abs_diff - (sorted_nums1[j] - nums2[i]).abs].max
      end
      if j > 0
          max_diff = [max_diff, abs_diff - (nums2[i] - sorted_nums1[j-1]).abs].max
      end
  end
  (diff - max_diff) % (10**9 + 7)
end

def binary_search(nums, target)
  left = 0
  right = nums.length - 1
  while left <= right
      mid = (left + right) / 2
      if nums[mid] == target
          return mid
      elsif nums[mid] < target
          left = mid + 1
      else
          right = mid - 1
      end
  end
  left
end

# Example 1:
# Input: nums1 = [1,7,5], nums2 = [2,3,5]
# Output: 3
# Explanation: There are two possible optimal solutions:
# - Replace the second element with the first: [1,7,5] => [1,1,5], or
# - Replace the second element with the third: [1,7,5] => [1,5,5].
# Both will yield an absolute sum difference of |1-2| + (|1-3| or |5-3|) + |5-5| = 3.
# Example 2:
# Input: nums1 = [2,4,6,8,10], nums2 = [2,4,6,8,10]
# Output: 0
# Explanation: nums1 is equal to nums2 so no replacement is needed. This will result in an
# absolute sum difference of 0.
# Example 3:
# Input: nums1 = [1,10,4,4,2,7], nums2 = [9,3,5,1,7,4]
# Output: 20
# Explanation: Replace the first element with the second: [1,10,4,4,2,7] => [10,10,4,4,2,7].
# This yields an absolute sum difference of |10-9| + |10-3| + |4-5| + |4-1| + |2-7| + |7-4| = 20
