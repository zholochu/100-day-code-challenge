# You are given an integer num. You can swap two digits at most once to get the maximum valued number.
# Return the maximum valued number you can get.
# @param {Integer} num
# @return {Integer}
def maximum_swap(num)
  num_array = num.to_s.chars
  max_num_array = num_array.sort.reverse
  index = 0
  equal_part = []
  until num_array[index] != max_num_array[index] || index == num_array.length - 1
    equal_part << num_array[index]
    index += 1
  end
  equal_part
end

pp maximum_swap(2736)
pp maximum_swap(9973)
pp maximum_swap(9187)

# 7632
# 9973
# 9187
# 9871


# Example 1:
# Input: num = 2736
# Output: 7236
# Explanation: Swap the number 2 and the number 7.

# Example 2:
# Input: num = 9973
# Output: 9973
# Explanation: No swap.
