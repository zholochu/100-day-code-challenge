# Given an integer array nums and an integer k, modify the array in the following way:
# choose an index i and replace nums[i] with -nums[i].
# You should apply this process exactly k times. You may choose the same index i multiple times.
# Return the largest possible sum of the array after modifying it in this way.
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def largest_sum_after_k_negations(nums, k)
  sorted_nums = nums.sort
  if k.odd? && sorted_nums[0].negative?
    index1 =
  end

  nums.include(0) ? smallest = 0 : smallest = nums[0]
  nums.each do |element|
    smallest = element if element < smallest
  end
  smallest_index = nums.index(smallest)
  k.times do
    if nums[smallest_index].positive?
      nums[smallest_index] = -nums[smallest_index]
    elsif nums[smallest_index].negative?
      nums[smallest_index] = nums[smallest_index]
    end
  end
  result = 0
  nums.each do |element|
    result += element
  end
  return result
end

pp largest_sum_after_k_negations([3,-1,0,2],3)
