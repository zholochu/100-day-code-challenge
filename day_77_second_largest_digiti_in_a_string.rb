# Given an alphanumeric string s, return the second largest numerical digit that appears in s, or -1 if it does not exist.
# An alphanumeric string is a string consisting of lowercase English letters and digits.
# @param {String} s
# @return {Integer}
def second_highest(s)
  first = second = -1
  s.chars.each do |char|
    if char =~ /\d/
      digit = char.to_i
      if digit > first
        second = first
        first = digit
      elsif digit != first && digit > second
        second = digit
      end
    end
  end
  second
end

pp second_highest("dfa12321afd")
pp second_highest("abc1111")
pp second_highest("xyz")

# Example 1:
# Input: s = "dfa12321afd"
# Output: 2
# Explanation: The digits that appear in s are [1, 2, 3]. The second largest digit is 2.

# Example 2:
# Input: s = "abc1111"
# Output: -1
# Explanation: The digits that appear in s are [1]. There is no second largest digit.
