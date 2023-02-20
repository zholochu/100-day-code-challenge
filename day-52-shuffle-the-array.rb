# Given the array nums consisting of 2n elements in the form [x1,x2,...,xn,y1,y2,...,yn].
# Return the array in the form [x1,y1,x2,y2,...,xn,yn].
# @param {Integer[]} nums
# @param {Integer} n
# @return {Integer[]}

def shuffle(nums, n)
  x_array = nums[0..n-1]
  y_array = nums[n..-1]
  result = []
  index = 0
  n.times do
    result << x_array[index]
    result << y_array[index]
    index += 1
  end
  result
end

pp shuffle([2,5,1,3,4,7], 3)

# Input: nums = [2,5,1,3,4,7], n = 3
# Output: [2,3,5,4,1,7]
# Explanation: Since x1=2, x2=5, x3=1, y1=3, y2=4, y3=7 then the answer is [2,3,5,4,1,7].
