# Given an integer array nums, find three numbers whose product is maximum and return the maximum product.
# @param {Integer[]} nums
# @return {Integer}
def maximum_product(nums)
  nums = nums.sort
  negative_counter = 0
  nums.each do |element|
    negative_counter += 1 if element.negative?
  end
  if negative_counter >= 2

  end
  negative_counter
end

pp maximum_product([-1, 5, -10, -2, -3, 4, 5])
