# Given a string of English letters s, return the greatest English letter which occurs as both a lowercase and uppercase letter in s. The returned letter should be in uppercase. If no such letter exists, return an empty string.
# An English letter b is greater than another letter a if b appears after a in the English alphabet.
# @param {String} s
# @return {String}
def greatest_letter(s)
  lowercase_array = []
  uppercase_array = []
  result = ''
  length = s.length
  index = 0
  length.times do
    if s[index] == s[index].upcase
      uppercase_array << s[index]
      index += 1
    else
      lowercase_array << s[index]
      index += 1
    end
  end
  lowercase_array = lowercase_array.sort
  uppercase_array = uppercase_array.sort
  uppercase_array.each do |element|
    if lowercase_array.include?(element.downcase) && element > result
      result = element
    end
  end
  result
end

pp greatest_letter("lEeTcOdE")
pp greatest_letter("arRAzFif")
pp greatest_letter("AbCdEfGhIjK")

# Example 1:
# Input: s = "lEeTcOdE"
# Output: "E"
# Explanation:
# The letter 'E' is the only letter to appear in both lower and upper case.

# Example 2:
# Input: s = "arRAzFif"
# Output: "R"
# Explanation:
# The letter 'R' is the greatest letter to appear in both lower and upper case.
# Note that 'A' and 'F' also appear in both lower and upper case, but 'R' is greater than 'F' or 'A'.

# Example 3:
# Input: s = "AbCdEfGhIjK"
# Output: ""
# Explanation:
# There is no letter that appears in both lower and upper case.
