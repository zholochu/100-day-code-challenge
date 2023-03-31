# Given an integer array nums, return the greatest common divisor of the smallest number and largest number in nums.
# The greatest common divisor of two numbers is the largest positive integer that evenly divides both numbers.
# @param {Integer[]} nums
# @return {Integer}
def find_gcd(nums)
  smallest = nums.min
  largest = nums.max
  divisors = (1..smallest).to_a
  if largest % smallest == 0
    smallest
  else
    div = divisors[-1]
    until largest % div == 0 && smallest % div == 0
      divisors.pop
      div = divisors[-1]
    end
    div
  end
end

pp find_gcd([2,5,6,9,10])
pp find_gcd([7,5,6,8,3])
pp find_gcd([3,3])


# Example 1:
# Input: nums = [2,5,6,9,10]
# Output: 2
# Explanation:
# The smallest number in nums is 2.
# The largest number in nums is 10.
# The greatest common divisor of 2 and 10 is 2.

# Example 2:
# Input: nums = [7,5,6,8,3]
# Output: 1
# Explanation:
# The smallest number in nums is 3.
# The largest number in nums is 8.
# The greatest common divisor of 3 and 8 is 1.

# Example 3:
# Input: nums = [3,3]
# Output: 3
# Explanation:
# The smallest number in nums is 3.
# The largest number in nums is 3.
# The greatest common divisor of 3 and 3 is 3.
