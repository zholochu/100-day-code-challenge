# Given a 0-indexed integer array nums of length n and an integer k, return the number of pairs (i, j) where 0 <= i < j < n, such that nums[i] == nums[j] and (i * j) is divisible by k.

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_pairs(nums, k)
  length = nums.length
  counter = 0
  nums.each_index do |index|
    interim_ind = 0
    length.times do
      if index != interim_ind && nums[index] == nums[interim_ind] && ((index * interim_ind) % k) == 0
        counter += 1
        interim_ind += 1
      else
        interim_ind += 1
      end
    end
    interim_ind = 0
  end
  counter / 2
end

pp count_pairs([3,1,2,2,2,1,3], 2)
pp count_pairs([1,2,3,4], 1)

# Example 1:
# Input: nums = [3,1,2,2,2,1,3], k = 2
# Output: 4
# Explanation:
# There are 4 pairs that meet all the requirements:
# - nums[0] == nums[6], and 0 * 6 == 0, which is divisible by 2.
# - nums[2] == nums[3], and 2 * 3 == 6, which is divisible by 2.
# - nums[2] == nums[4], and 2 * 4 == 8, which is divisible by 2.
# - nums[3] == nums[4], and 3 * 4 == 12, which is divisible by 2.

# Example 2:
# Input: nums = [1,2,3,4], k = 1
# Output: 0
# Explanation: Since no value in nums is repeated, there are no pairs (i,j) that meet all the requirements.
