# Given an array nums of n integers, return an array of all the unique quadruplets [nums[a], nums[b], nums[c], nums[d]] such that:
# 0 <= a, b, c, d < n
# a, b, c, and d are distinct.
# nums[a] + nums[b] + nums[c] + nums[d] == target
# You may return the answer in any order.
def four_sum(nums, target)
  n = nums.length
  nums.sort!
  result = []

  (0..n - 4).each do |a|
    next if a > 0 && nums[a] == nums[a - 1]
    (a + 1..n - 3).each do |b|
      next if b > a + 1 && nums[b] == nums[b - 1]
      c = b + 1
      d = n - 1
      while c < d
        sum = nums[a] + nums[b] + nums[c] + nums[d]
        if sum == target
          result << [nums[a], nums[b], nums[c], nums[d]]
          c += 1
          d -= 1
          c += 1 while c < d && nums[c] == nums[c - 1]
          d -= 1 while c < d && nums[d] == nums[d + 1]
        elsif sum < target
          c += 1
        else
          d -= 1
        end
      end
    end
  end
  result
end

# Example 1:
# Input: nums = [1,0,-1,0,-2,2], target = 0
# Output: [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]

# Example 2:
# Input: nums = [2,2,2,2,2], target = 8
# Output: [[2,2,2,2]]
