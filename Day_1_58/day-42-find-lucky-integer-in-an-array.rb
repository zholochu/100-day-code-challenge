# Given an array of integers arr, a lucky integer is an integer that has a frequency in the array equal to its value.
# Return the largest lucky integer in the array. If there is no lucky integer return -1.
# @param {Integer[]} arr
# @return {Integer}
def find_lucky(arr)
  arr = arr.tally
  arr_hash = arr.sort_by{ |key, value| -value }.to_h
  result = -1
  arr_hash.each_pair do |key, value|
    if key == value && key > result
      result = key
    end
  end
  result
end


pp find_lucky([1,2,2,3,3,3])
pp find_lucky([1,2,2,2,3,3])

# Input: arr = [1,2,2,3,3,3]
# Output: 3
# Explanation: 1, 2 and 3 are all lucky numbers, return the largest of them.
