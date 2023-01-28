# Given an integer array nums and an integer k, modify the array in the following way:
# choose an index i and replace nums[i] with -nums[i].
# You should apply this process exactly k times. You may choose the same index i multiple times.
# Return the largest possible sum of the array after modifying it in this way.
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def largest_sum_after_k_negations(nums, k)
  nums.sort!
  index = 0
  k.times do
    nums[index] = - nums[index]
    index += 1 if index < nums.size - 1 && nums[index] > nums[index + 1]
  end
  nums.sum
end
