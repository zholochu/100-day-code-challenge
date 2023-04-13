# Given an integer array nums of length n and an integer target, find three integers in nums such that the sum is closest to target.
# Return the sum of the three integers.
# You may assume that each input would have exactly one solution.
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  nums.sort!
  closest_sum = nums[0] + nums[1] + nums[2]

  for i in 0..(n-2)
    left = i + 1
    right = n - 1

    while left < right
      sum = nums[i] + nums[left] + nums[right]

      if (sum - target).abs < (closest_sum - target).abs
        closest_sum = sum
      end

      if sum > target
        right -= 1
      elsif sum < target
        left += 1
      else
        return sum
      end
    end
  end

  return closest_sum
end



# Example 1:
# Input: nums = [-1,2,1,-4], target = 1
# Output: 2
# Explanation: The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).

# Example 2:
# Input: nums = [0,0,0], target = 1
# Output: 0
# Explanation: The sum that is closest to the target is 0. (0 + 0 + 0 = 0).
