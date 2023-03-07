# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
# You can return the answer in any order.

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

def two_sum(nums, target)
  nums.each_with_index do |current_num, current_index|
      match_target = target - current_num
      match = nums.index(match_target)
      next unless match
      return [current_index, match] if match != current_index
  end
end
