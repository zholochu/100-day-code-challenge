# Given a binary array nums, return the maximum number of consecutive 1's in the array.
# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
  output = []
  count = 0
  index = 0
  nums.each do |element|
    if element == 1
      count += 1
    elsif element == 0
      output.insert(index, count)
      count = 0
      index += 1
    end
  end
  output << count
  output.max
end
