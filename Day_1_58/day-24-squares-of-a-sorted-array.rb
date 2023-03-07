# Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.
# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
  result = []
  nums.each do |element|
    result << element**element
  end
  result
end
