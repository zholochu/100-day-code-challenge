# You are given a 0-indexed array of integers nums of length n. You are initially positioned at nums[0].
# Each element nums[i] represents the maximum length of a forward jump from index i. In other words, if you are at nums[i], you can jump to any nums[i + j] where:
# 0 <= j <= nums[i] and
# i + j < n
# Return the minimum number of jumps to reach nums[n - 1]. The test cases are generated such that you can reach nums[n - 1].
# @param {Integer[]} nums
# @return {Integer}
def jump(nums)
  n = nums.size
  return 0 if n == 1

  jumps = 0
  current_end = 0
  farthest_end = 0

  (0...n).each do |i|
    farthest_end = [farthest_end, i + nums[i]].max
    if i == current_end
      jumps += 1
      current_end = farthest_end
      return jumps if current_end >= n - 1
    end
  end
end

pp jump([2,3,1,1,4])
pp jump([2,3,0,1,4])


# Example 1:
# Input: nums = [2,3,1,1,4]
# Output: 2
# Explanation: The minimum number of jumps to reach the last index is 2. Jump 1 step from index 0 to 1, then 3 steps to the last index.

# Example 2:
# Input: nums = [2,3,0,1,4]
# Output: 2
