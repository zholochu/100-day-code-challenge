# The pair sum of a pair (a,b) is equal to a + b. The maximum pair sum is the largest pair sum in a list of pairs.
# For example, if we have pairs (1,5), (2,3), and (4,4), the maximum pair sum would be max(1+5, 2+3, 4+4) = max(6, 5, 8) = 8.
# Given an array nums of even length n, pair up the elements of nums into n / 2 pairs such that:
# Each element of nums is in exactly one pair, and
# The maximum pair sum is minimized.
# Return the minimized maximum pair sum after optimally pairing up the elements.
# @param {Integer[]} nums
# @return {Integer}
def min_pair_sum(nums)
  nums = nums.sort
  median = nums.length / 2
  ind1 = 0
  ind2 = -1
  final_array = []
  median.times do
    final_array << nums[ind1]
    final_array << nums[ind2]
    ind1 += 1
    ind2 -= 1
  end

  sum_array = []
  index = 0
  median.times do
    sum = final_array[index] + final_array[index+1]
    sum_array << sum
    index += 2
  end

  sum_array.sort[-1]

  # divided_array = nums.each_slice(median).to_a
  # nums1 = divided_array[0]
  # nums2 = divided_array[1].reverse
  # final_array = []
  # index = 0
  # median.times do
  #   interim = []
  #   interim << nums1[index]
  #   interim << nums2[index]
  #   final_array << interim
  #   index += 1
  # end
  # result = []
  # final_array.each do |element|
  #   result << element.sum
  # end
  # result.sort[-1]
end

pp min_pair_sum([3,5,2,3])
pp min_pair_sum([3,5,4,2,4,6])

# Example 1:
# Input: nums = [3,5,2,3]
# Output: 7
# Explanation: The elements can be paired up into pairs (3,3) and (5,2).
# The maximum pair sum is max(3+3, 5+2) = max(6, 7) = 7.

# Example 2:
# Input: nums = [3,5,4,2,4,6]
# Output: 8
# Explanation: The elements can be paired up into pairs (3,5), (4,4), and (6,2).
# The maximum pair sum is max(3+5, 4+4, 6+2) = max(8, 8, 8) = 8.
