# Given an integer array nums of size n, return the number with the value closest to 0 in nums. If there are multiple answers, return the number with the largest value.
# @param {Integer[]} nums
# @return {Integer}
def find_closest_number(nums)
  division = nums.partition { |n| n < 0 }
  positive_array = division[1].sort
  negative_array = division[0].sort
  negative_small = negative_array[-1]
  positive_small = positive_array[0]

  if positive_small == negative_small.abs
    positive_small
  else
    if positive_small < negative_small.abs
      positive_small
    else
      negative_small
    end
  end
end

pp find_closest_number([-4,-2,1,4,8])
pp find_closest_number([2,-1,1])

# Example 1:
# Input: nums = [-4,-2,1,4,8]
# Output: 1
# Explanation:
# The distance from -4 to 0 is |-4| = 4.
# The distance from -2 to 0 is |-2| = 2.
# The distance from 1 to 0 is |1| = 1.
# The distance from 4 to 0 is |4| = 4.
# The distance from 8 to 0 is |8| = 8.
# Thus, the closest number to 0 in the array is 1.

# Example 2:
# Input: nums = [2,-1,1]
# Output: 1
# Explanation: 1 and -1 are both the closest numbers to 0, so 1 being larger is returned.
