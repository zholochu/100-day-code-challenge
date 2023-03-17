# Given an array arr of positive integers sorted in a strictly increasing order, and an integer k.
# Return the kth positive integer that is missing from this array.
# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer}
def find_kth_positive(arr, k)
  complete_array = (1..arr[-1]).to_a
  missing_array = []
  complete_array.each do |element|
    missing_array << element if !arr.include?(element)
  end
  if (0..missing_array.length-1).include?(k)
    missing_array[k-1]
  elsif !(0..missing_array.length-1).include?(k)
    counter = 1
    until (0..missing_array.length-1).include?(k)
      new_positive_number =  (arr[-1] + counter)
      missing_array << new_positive_number
      counter += 1
    end
    missing_array[k-1]
  end
end

pp find_kth_positive([2,3,4,7,11], 5)
pp find_kth_positive([1,2,3,4], 2)

# Example 1:
# Input: arr = [2,3,4,7,11], k = 5
# Output: 9
# Explanation: The missing positive integers are [1,5,6,8,9,10,12,13,...]. The 5th missing positive integer is 9.

# Example 2:
# Input: arr = [1,2,3,4], k = 2
# Output: 6
# Explanation: The missing positive integers are [5,6,7,...]. The 2nd missing positive integer is 6.
