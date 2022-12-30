# Given a string s, return the longest palindromic substring in s.
# Constraints:
# 1 <= s.length <= 1000
# s consist of only digits and English letters.

def longest_palindrome(s)
  longest_substring = ""

  s.each_char.with_index do |c, i|
    (1..s.length).each do |length|
      if s[i, length] == s[i, length].reverse && s[i, length].length > longest.length
        longest = s[i, length]
      end
    end
  end
  return longest
end
