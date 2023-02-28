# Given an integer array arr, return true if there are three consecutive odd numbers in the array. Otherwise, return false.
# @param {Integer[]} arr
# @return {Boolean}
def three_consecutive_odds(arr)
  index = 0
  while index < arr.length - 2
    if arr[index] % 2 != 0 && arr[index+1] % 2 != 0 && arr[index+2] % 2 != 0
      return true
    end
    index += 1
  end
  return false
end

pp three_consecutive_odds([2,6,4,1])
pp three_consecutive_odds([1,2,34,3,4,5,7,23,12])

# Example 1:
# Input: arr = [2,6,4,1]
# Output: false
# Explanation: There are no three consecutive odds.

# Example 2:
# Input: arr = [1,2,34,3,4,5,7,23,12]
# Output: true
# Explanation: [5,7,23] are three consecutive odds.
