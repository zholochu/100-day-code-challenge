# Given an array nums of size n, return the majority element.
# The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.
# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  n = nums.length
  result = 0
  nums = nums.tally
  nums.each_pair do |key, value|
    result = key if value > (n/2.0)
  end
  result
end
