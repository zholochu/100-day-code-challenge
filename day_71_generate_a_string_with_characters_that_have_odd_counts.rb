# Given an integer n, return a string with n characters such that each character in such string occurs an odd number of times.
# The returned string must contain only lowercase English letters. If there are multiples valid strings, return any of them.
# @param {Integer} n
# @return {String}
def generate_the_string(n)
  letters = ("a".."z").to_a
  result = ""
  modulo = n % 3
  repeat = n / 3
  if n <= letters.length
    index = 0
    n.times do
      result << letters[index]
      index += 1
    end
  else
    if n.even?
      t = n - 1
      result << letters[5] * t
      result << letters[8]
    else
      result << letters[7] * n
    end
  end
  result
end

pp generate_the_string(4)
pp generate_the_string(2)
pp generate_the_string(7)

# Example 1:
# Input: n = 4
# Output: "pppz"
# Explanation: "pppz" is a valid string since the character 'p' occurs three times and the character 'z' occurs once. Note that there are many other valid strings such as "ohhh" and "love".

# Example 2:
# Input: n = 2
# Output: "xy"
# Explanation: "xy" is a valid string since the characters 'x' and 'y' occur once. Note that there are many other valid strings such as "ag" and "ur".

# Example 3:
# Input: n = 7
# Output: "holasss"
