# You are given a string num, representing a large integer. Return the largest-valued odd integer (as a string) that is a non-empty substring of num, or an empty string "" if no odd integer exists.
# A substring is a contiguous sequence of characters within a string.
# @param {String} num
# @return {String}
def largest_odd_number(num)
  n = num.length
  (n-1).downto(0) do |i|
    if num[i].to_i.odd?
      return num[0..i]
    end
  end
  ""
end


pp largest_odd_number("52")
pp largest_odd_number("4206")
pp largest_odd_number("35427")
pp largest_odd_number("100")

# Example 1:
# Input: num = "52"
# Output: "5"
# Explanation: The only non-empty substrings are "5", "2", and "52". "5" is the only odd number.

# Example 2:
# Input: num = "4206"
# Output: ""
# Explanation: There are no odd numbers in "4206".

# Example 3:
# Input: num = "35427"
# Output: "35427"
# Explanation: "35427" is already an odd number.
