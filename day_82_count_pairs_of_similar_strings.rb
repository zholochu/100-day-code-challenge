# You are given a 0-indexed string array words.
# Two strings are similar if they consist of the same characters.
# For example, "abca" and "cba" are similar since both consist of characters 'a', 'b', and 'c'.
# However, "abacba" and "bcfd" are not similar since they do not consist of the same characters.
# Return the number of pairs (i, j) such that 0 <= i < j <= word.length - 1 and the two strings words[i] and words[j] are similar.
# @param {String[]} words
# @return {Integer}
def similar_pairs(words)
  sorted_words = words.map { |word| word.chars.uniq.sort.join }
  pairs = 0

  sorted_words.each_index do |i|
    ((i+1)...sorted_words.length).each do |j|
      if sorted_words[i] == sorted_words[j]
        pairs += 1
      end
    end
  end
  pairs
end


pp similar_pairs(["aba","aabb","abcd","bac","aabc"])
pp similar_pairs(["aabb","ab","ba"])
pp similar_pairs(["nba","cba","dba"])

# Example 1:
# Input: words = ["aba","aabb","abcd","bac","aabc"]
# Output: 2
# Explanation: There are 2 pairs that satisfy the conditions:
# - i = 0 and j = 1 : both words[0] and words[1] only consist of characters 'a' and 'b'.
# - i = 3 and j = 4 : both words[3] and words[4] only consist of characters 'a', 'b', and 'c'.

# Example 2:
# Input: words = ["aabb","ab","ba"]
# Output: 3
# Explanation: There are 3 pairs that satisfy the conditions:
# - i = 0 and j = 1 : both words[0] and words[1] only consist of characters 'a' and 'b'.
# - i = 0 and j = 2 : both words[0] and words[2] only consist of characters 'a' and 'b'.
# - i = 1 and j = 2 : both words[1] and words[2] only consist of characters 'a' and 'b'.

# Example 3:
# Input: words = ["nba","cba","dba"]
# Output: 0
# Explanation: Since there does not exist any pair that satisfies the conditions, we return 0.
