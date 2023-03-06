# Given two strings s and t, return true if s is a subsequence of t, or false otherwise.
# A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).
# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
result = 0
index1 = 0
index2 = 0

t.length.times do
  if s[index1] == t[index2]
    index1 += 1
    index2 += 1
    result += 1
  else
    index2 +=1
  end
end
result == s.length ? true : false
end

pp is_subsequence("abc", "ahbgdc")
pp is_subsequence("axc", "ahbgdc")

# Example 1:
# Input: s = "abc", t = "ahbgdc"
# Output: true

# Example 2:
# Input: s = "axc", t = "ahbgdc"
# Output: false
