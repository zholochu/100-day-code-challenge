# You are given a 0-indexed string num of length n consisting of digits.
# Return true if for every index i in the range 0 <= i < n, the digit i occurs num[i] times in num, otherwise return false.
# @param {String} num
# @return {Boolean}
def digit_count(num)
  num_array = num.chars.map {|chr| chr.to_i}
  num_hush = num_array.tally
  f = 0
  t = 0
  # index = 0
  num_array.each_index do |index|
    num_hush.each_pair do |key, value|
      if index == key && num_array[index] == value
        t += 1
      else
        f += 1
      end
    end
  end
  t >= num_hush.length ? true : false
end

# if my_hash.key?(1) && my_hash[1] == 2

pp digit_count("1210")
pp digit_count("030")
pp digit_count("5210010007")

# Example 1:
# Input: num = "1210"
# Output: true
# Explanation:
# num[0] = '1'. The digit 0 occurs once in num.
# num[1] = '2'. The digit 1 occurs twice in num.
# num[2] = '1'. The digit 2 occurs once in num.
# num[3] = '0'. The digit 3 occurs zero times in num.
# The condition holds true for every index in "1210", so return true.

# Example 2:
# Input: num = "030"
# Output: false
# Explanation:
# num[0] = '0'. The digit 0 should occur zero times, but actually occurs twice in num.
# num[1] = '3'. The digit 1 should occur three times, but actually occurs zero times in num.
# num[2] = '0'. The digit 2 occurs zero times in num.
# The indices 0 and 1 both violate the condition, so return false.
