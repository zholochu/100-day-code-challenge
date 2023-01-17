# You are given an integer array nums. The unique elements of an array are the elements that appear exactly once in the array.
# Return the sum of all the unique elements of nums.
# @param {Integer[]} nums
# @return {Integer}

def sum_of_unique(nums)
  result = []
  nums.each do |element|
    index = nums.find_index(element)
    array_length = nums.length
    if !nums[index+1..array_length].include?(element)
      result << element
    end
  end
  return result.inject(0, :+)
end
