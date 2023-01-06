# Given a string s consisting of words and spaces, return the length of the last word in the string.
# A word is a maximal substring consisting of non-zpace characters only.
# Constraints:
# 1 <= s.length <= 104
# s consists of only English letters and spaces ' '.
# There will be at least one word in s.

# @param {String} s
# @return {Integer}
def length_of_last_word(s)
  if s.length.positive?
    s_array = s.split(/[^[[:word:]]]+/)
    s_array.length == 1 ? s_array[0].length : s_array.last.length
  end
end
