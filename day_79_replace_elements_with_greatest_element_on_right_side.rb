# Given an array arr, replace every element in that array with the greatest element among the elements to its right, and replace the last element with -1.
# After doing so, return the array.
# @param {Integer[]} arr
# @return {Integer[]}
def replace_elements(arr)
  index = 0
  length = arr.length - 1
  if arr.length >= 2
    arr.each_index do |ind|
      arr[ind] = arr[ind+1..-1].max
    end
    arr[-1] = -1
    arr
    # length.times do
    #   arr[index] = arr[index+1..-1].max
    #   index += 1
    # end
    # arr[-1] = -1
    # arr
  else
    [-1]
  end
end

pp replace_elements([17,18,5,4,6,1])
# pp replace_elements([400])

# Example 1:
# Input: arr = [17,18,5,4,6,1]
# Output: [18,6,6,6,1,-1]
# Explanation:
# - index 0 --> the greatest element to the right of index 0 is index 1 (18).
# - index 1 --> the greatest element to the right of index 1 is index 4 (6).
# - index 2 --> the greatest element to the right of index 2 is index 4 (6).
# - index 3 --> the greatest element to the right of index 3 is index 4 (6).
# - index 4 --> the greatest element to the right of index 4 is index 5 (1).
# - index 5 --> there are no elements to the right of index 5, so we put -1.

# Example 2:
# Input: arr = [400]
# Output: [-1]
# Explanation: There are no elements to the right of index 0.
