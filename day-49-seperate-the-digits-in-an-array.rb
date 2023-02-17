# Given an array of positive integers nums, return an array answer that consists of the digits of each integer in nums after separating them in the same order they appear in nums.
# To separate the digits of an integer is to get all the digits it has in the same order.
# For example, for the integer 10921, the separation of its digits is [1,0,9,2,1].
# @param {Integer[]} nums
# @return {Integer[]}
def separate_digits(nums)
  nums_string = []
  nums.each do |element|
    nums_string << element.to_s
  end
  nums_string.join.chars.map {|chr| chr.to_i}
end

pp separate_digits([13,25,83,77])

# Input: nums = [13,25,83,77]
# Output: [1,3,2,5,8,3,7,7]
