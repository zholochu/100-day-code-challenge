# Given an integer array nums, find three numbers whose product is maximum and return the maximum product.
# @param {Integer[]} nums
# @return {Integer}
def maximum_product(nums)
  nums = nums.sort
  first_three = nums[-1] * nums[-2] * nums[-3]
  second_three = nums[-1] * nums[1] * nums [2]
  first_three > second_three ? first_three : second_three
end

pp maximum_product([-1, 5, -10, -2, -3, 4, 5])
pp maximum_product([-4,-3,-2,-1,60])
pp maximum_product([-5,-6,-5])
