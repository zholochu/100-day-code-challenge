# Given two strings word1 and word2, return the minimum number of steps required to make word1 and word2 the same.
# In one step, you can delete exactly one character in either string.
# @param {String} word1
# @param {String} word2
# @return {Integer}
def min_distance(word1, word2)
  lengths = Array.new(word1.length + 1) { Array.new(word2.length + 1, 0) }
  max_length = 0
  max_end_pos = 0

  (1..word1.length).each do |i|
    (1..word2.length).each do |j|
      if word1[i-1] == word2[j-1]
        lengths[i][j] = lengths[i-1][j-1] + 1
        if lengths[i][j] > max_length
          max_length = lengths[i][j]
          max_end_pos = i
        end
      else
        lengths[i][j] = 0
      end
    end
  end
  substring = word1[max_end_pos - max_length...max_end_pos]
  a = substring.length
  (word1.length - a) + (word2.length - a)
  substring
end

pp min_distance("sea", "eat")
pp min_distance("leetcode", "etco")
pp min_distance("park", "spake")

# Example 1:
# Input: word1 = "sea", word2 = "eat"
# Output: 2
# Explanation: You need one step to make "sea" to "ea" and another step to make "eat" to "ea".

# Example 2:
# Input: word1 = "leetcode", word2 = "etco"
# Output: 4
