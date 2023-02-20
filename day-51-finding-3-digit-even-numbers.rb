# You are given an integer array digits, where each element is a digit. The array may contain duplicates.
# You need to find all the unique integers that follow the given requirements:
# The integer consists of the concatenation of three elements from digits in any arbitrary order.
# The integer does not have leading zeros.
# The integer is even.
# For example, if the given digits were [1, 2, 3], integers 132 and 312 follow the requirements.
# Return a sorted array of the unique integers.
# @param {Integer[]} digits
# @return {Integer[]}

def find_even_numbers(digits)
  digits_hash = digits.tally
  new_digits = []
  digits_hash.each_pair do |key, value|
    if value > 3
      3.times do
        new_digits << key
      end
    else
      value.times do
        new_digits << key
      end
    end
  end

  interim_array = []
  new_digits.permutation(3).each do |three_digit|
    interim_array << three_digit.join.to_i
  end

  result = []
  interim_array = interim_array.uniq.sort
  interim_array.each do |element|
    if element.to_s.length == 3 && element.even?
      result << element
    end
  end
  result
end

pp find_even_numbers([2,2,8,8,2])
pp find_even_numbers([1,8,0,0,0,2,7,4,8,9,5,0,7,8,4,9,0,9,5,1,0,9,0,6,6,5,8,4,3,5,8,8,5,1,9,7,5,4,8,8,2,0,2,1,0,2,8,2,1,8,0,7,9,5,9,8,0,2,4,6,1,1,2,5,9,7,2,4,7,9,3,4,0,5,5,6,3,5,1,8,1,0,9,0,3,9,9,8,8,3])


# Example 1:
# Input: digits = [2,1,3,0]
# Output: [102,120,130,132,210,230,302,310,312,320]
# Explanation: All the possible integers that follow the requirements are in the output array.
# Notice that there are no odd integers or integers with leading zeros.

# Example 2:
# Input: digits = [2,2,8,8,2]
# Output: [222,228,282,288,822,828,882]
# Explanation: The same digit can be used as many times as it appears in digits.
# In this example, the digit 8 is used twice each time in 288, 828, and 882.

# Example 3:
# Input: digits = [3,7,5]
# Output: []
# Explanation: No even integers can be formed using the given digits.
