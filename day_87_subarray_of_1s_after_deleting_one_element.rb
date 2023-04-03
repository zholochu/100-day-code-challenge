# Given a binary array nums, you should delete one element from it.
# Return the size of the longest non-empty subarray containing only 1's in the resulting array. Return 0 if there is no such subarray.
# @param {Integer[]} nums
# @return {Integer}
def longest_subarray(nums)
  left_window = 0
  right_window = 0
  longest_arr = 0
  k = 1

  while right_window < nums.length
      longest_arr = [longest_arr, right_window - left_window].max

      right_window += 1 if nums[right_window] == 1
      if nums[right_window] == 0 && k > 0
          right_window += 1
          k -= 1
      end

      if nums[right_window] == 0 && k == 0
          k += 1 if nums[left_window] == 0
          left_window += 1
      end
  end
  return longest_arr
end

# Example 1:
# Input: nums = [1,1,0,1]
# Output: 3
# Explanation: After deleting the number in position 2, [1,1,1] contains 3 numbers with value of 1's.

# Example 2:
# Input: nums = [0,1,1,1,0,1,1,0,1]
# Output: 5
# Explanation: After deleting the number in position 4, [0,1,1,1,1,1,0,1] longest subarray with value of 1's is [1,1,1,1,1].

# Example 3:
# Input: nums = [1,1,1]
# Output: 2
# Explanation: You must delete one element.
