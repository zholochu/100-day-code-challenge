# Given an integer array nums of length n, you want to create an array ans of length 2n where ans[i] == nums[i] and ans[i + n] == nums[i] for 0 <= i < n (0-indexed).
# Specifically, ans is the concatenation of two nums arrays.
# Return the array ans.
# @param {Integer[]} nums
# @return {Integer[]}
def get_concatenation(nums)
  ans = []
  2.times do
    nums.each do |element|
      ans << element
    end
  end
  ans
end

pp get_concatenation([1,2,1])
