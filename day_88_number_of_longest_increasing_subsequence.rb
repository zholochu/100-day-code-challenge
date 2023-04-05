# Given an integer array nums, return the number of longest increasing subsequences.
# Notice that the sequence has to be strictly increasing.
# @param {Integer[]} nums
# @return {Integer}
def find_number_of_lis(nums)
  n = nums.length
  lengths = Array.new(n, 1)
  counts = Array.new(n, 1)

  max_length = 1

  (1...n).each do |i|
    (0...i).each do |j|
      if nums[i] > nums[j]
        if lengths[j] + 1 > lengths[i]
          lengths[i] = lengths[j] + 1
          counts[i] = counts[j]
        elsif lengths[j] + 1 == lengths[i]
          counts[i] += counts[j]
        end
      end
    end
    max_length = [max_length, lengths[i]].max
  end

  count = 0
  (0...n).each do |i|
    if lengths[i] == max_length
      count += counts[i]
    end
  end

  return count
end
