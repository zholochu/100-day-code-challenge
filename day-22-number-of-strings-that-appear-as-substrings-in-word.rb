# Given an array of strings patterns and a string word, return the number of strings in patterns that exist as a substring in word.
# A substring is a contiguous sequence of characters within a string.
# @param {String[]} patterns
# @param {String} word
# @return {Integer}

def num_of_strings(patterns, word)
  result = 0
  patterns.each { |element| result += 1 if word =~ /element/}
  result
end
