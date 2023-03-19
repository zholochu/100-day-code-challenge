# Given a pattern and a string s, find if s follows the same pattern.
# Here follow means a full match, such that there is a bijection between a letter in pattern and a non-empty word in s.
# @param {String} pattern
# @param {String} s
# @return {Boolean}
def word_pattern(pattern, s)
  words = s.split(" ")
  return false if pattern.length != words.length

  p_to_w = {}
  w_to_p = {}

  pattern.chars.each_with_index do |char, i|
    if p_to_w[char].nil? && w_to_p[words[i]].nil?
      p_to_w[char] = words[i]
      w_to_p[words[i]] = char
    else
      return false unless p_to_w[char] == words[i] && w_to_p[words[i]] == char
    end
  end

  return true
end


# Example 1:
# Input: pattern = "abba", s = "dog cat cat dog"
# Output: true

# Example 2:
# Input: pattern = "abba", s = "dog cat cat fish"
# Output: false

# Example 3:
# Input: pattern = "aaaa", s = "dog cat cat dog"
# Output: false
