# Given an array of integers nums, half of the integers in nums are odd, and the other half are even.
# Sort the array so that whenever nums[i] is odd, i is odd, and whenever nums[i] is even, i is even.
# Return any answer array that satisfies this condition.
# @param {Integer[]} nums
# @return {Integer[]}
def sort_array_by_parity_ii(nums)
  odd_array = []
  even_array = []
  result = []
  nums.each do |element|
    if element.odd?
      odd_array << element
    else
      even_array << element
    end
  end
  index = 1
  odd_array.each do |odd|
    even_array.insert(index, odd)
    index += 2
  end
  even_array
end

pp sort_array_by_parity_ii([4,2,5,7])
# Input: nums = [4,2,5,7]
# Output: [4,5,2,7]
