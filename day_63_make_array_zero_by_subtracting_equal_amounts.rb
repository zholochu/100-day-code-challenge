# You are given a non-negative integer array nums. In one operation, you must:
# Choose a positive integer x such that x is less than or equal to the smallest non-zero element in nums.
# Subtract x from every positive element in nums.
# Return the minimum number of operations to make every element in nums equal to 0.
# @param {Integer[]} nums
# @return {Integer}
def minimum_operations(nums)
  nums.reject!(&:zero?)
  nums.sort!
  counter = 0
  while nums.any?
    x = nums.first
    nums.map! { |num| num <= x ? 0 : num - x }
    counter += 1
    nums.reject!(&:zero?)
  end
  counter
end

pp minimum_operations([1,5,0,3,5])
pp minimum_operations([0])

# Example 1:
# Input: nums = [1,5,0,3,5]
# Output: 3
# Explanation:
# In the first operation, choose x = 1. Now, nums = [0,4,0,2,4].
# In the second operation, choose x = 2. Now, nums = [0,2,0,0,2].
# In the third operation, choose x = 2. Now, nums = [0,0,0,0,0].

# Example 2:
# Input: nums = [0]
# Output: 0
# Explanation: Each element in nums is already 0 so no operations are needed.
