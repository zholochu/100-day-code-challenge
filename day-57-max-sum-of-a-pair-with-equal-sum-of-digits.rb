# You are given a 0-indexed array nums consisting of positive integers. You can choose two indices i and j, such that i != j, and the sum of digits of the number nums[i] is equal to that of nums[j].
# Return the maximum value of nums[i] + nums[j] that you can obtain over all possible indices i and j that satisfy the conditions.
# @param {Integer[]} nums
# @return {Integer}
def maximum_sum(nums)
  nums = nums.sort.map { |element| element.to_s.chars.map {|chr| chr.to_i}}
  a = 0
  b = 0
  length = nums.length
  result = []
  nums.each_index do |index|
    ind = 0
    length.times do
      interim_array = []
      if index != ind && nums[index].sum == nums[ind].sum
        interim_array << nums[index].join.to_i
        interim_array << nums[ind].join.to_i
        ind += 1
      else
        ind += 1
      end
      result << interim_array
    end
  end
  result = result.uniq.map do |element|
    element = element.sort
  end
  result = result.uniq.map do |element|
    element = element.sum
  end
  if result.empty? || result.length == 1 && result[0] == 0
    -1
  else
    result.sort[-1]
  end
end

pp maximum_sum([18,43,36,13,7])
pp maximum_sum([10,12,19,14])
pp maximum_sum([4,6,10,6])
pp maximum_sum([383,77,97,261,102,344,150,130,55,337,401,498,21,5])
pp maximum_sum([10,12,19,14])
pp maximum_sum([368,369,307,304,384,138,90,279,35,396,114,328,251,364,300,191,438,467,183])

# Example 1:
# Input: nums = [18,43,36,13,7]
# Output: 54
# Explanation: The pairs (i, j) that satisfy the conditions are:
# - (0, 2), both numbers have a sum of digits equal to 9, and their sum is 18 + 36 = 54.
# - (1, 4), both numbers have a sum of digits equal to 7, and their sum is 43 + 7 = 50.
# So the maximum sum that we can obtain is 54.

# Example 2:
# Input: nums = [10,12,19,14]
# Output: -1
# Explanation: There are no two numbers that satisfy the conditions, so we return -1.
