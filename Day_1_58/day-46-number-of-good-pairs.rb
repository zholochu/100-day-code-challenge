# Given an array of integers nums, return the number of good pairs.
# A pair (i, j) is called good if nums[i] == nums[j] and i < j.
# @param {Integer[]} nums
# @return {Integer}
def num_identical_pairs(nums)
  counter = 0
  array = nums
  nums.each_index do |num_index|
    start_index = num_index + 1
    nums[start_index..-1].each do |element|
      if nums[num_index] == element
        counter += 1
        start_index += 1
      end
    end
  end
  counter
end

pp num_identical_pairs([1,2,3,1,1,3])

# Input: nums = [1,2,3,1,1,3]
# Output: 4
