# You are given an array of positive integers nums and want to erase a subarray containing unique elements. The score you get by erasing the subarray is equal to the sum of its elements.
# Return the maximum score you can get by erasing exactly one subarray.
# An array b is called to be a subarray of a if it forms a contiguous subsequence of a, that is, if it is equal to a[l],a[l+1],...,a[r] for some (l,r).
# @param {Integer[]} nums
# @return {Integer}
def maximum_unique_subarray(nums)
  max_score = 0
  current_score = 0
  used = {}
  left = 0

  nums.each_with_index do |num, right|
    while used[num]
      used[nums[left]] = false
      current_score -= nums[left]
      left += 1
    end

    used[num] = true
    current_score += num
    max_score = [max_score, current_score].max
  end

  return max_score
end
