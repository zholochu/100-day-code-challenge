# Given a string s, find the longest palindromic subsequence's length in s.
# A subsequence is a sequence that can be derived from another sequence by deleting some or no elements without changing the order of the remaining elements.
# @param {String} s
# @return {Integer}
def longest_palindrome_subseq(s)
  @string = s
  @result = []
  max_len(0, s.length-1)
end

def max_len(i, j)
  return 0 if i > j
  return 1 if i == j
  return @result[i][j] if @result[i] && @result[i][j]
  @result[i] ||= []
  @result[i][j] = ((@string[i] == @string[j]) ? max_len(i+1, j-1)+2 : [max_len(i+1, j), max_len(i, j-1)].max)
end

pp longest_palindrome_subseq("bbbab")
pp longest_palindrome_subseq("cbbd")
# Example 1:
# Input: s = "bbbab"
# Output: 4
# Explanation: One possible longest palindromic subsequence is "bbbb".

# Example 2:
# Input: s = "cbbd"
# Output: 2
# Explanation: One possible longest palindromic subsequence is "bb".
