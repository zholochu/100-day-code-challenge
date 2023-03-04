# You are given a 0-indexed array of strings words and a 2D array of integers queries.
# Each query queries[i] = [li, ri] asks us to find the number of strings present in the range li to ri (both inclusive) of words that start and end with a vowel.
# Return an array ans of size queries.length, where ans[i] is the answer to the ith query.
# Note that the vowel letters are 'a', 'e', 'i', 'o', and 'u'.
# @param {String[]} words
# @param {Integer[][]} queries
# @return {Integer[]}
def vowel_strings(words, queries)
  result = []
  vowels = ['a', 'e', 'i', 'o', 'u']
  queries.each do |element|
    interim = words[element[0]..element[1]]
    counter = 0
    interim.each do |word|
      if vowels.include?(word[0]) && vowels.include?(word[-1])
        counter += 1
      end
    end
    result << counter
  end
  result
end

pp vowel_strings(["aba","bcb","ece","aa","e"],[[0,2],[1,4],[1,1]])
pp vowel_strings(["a","e","i"],[[0,2],[0,1],[2,2]])

# Example 1:
# Input: words = ["aba","bcb","ece","aa","e"], queries = [[0,2],[1,4],[1,1]]
# Output: [2,3,0]
# Explanation: The strings starting and ending with a vowel are "aba", "ece", "aa" and "e".
# The answer to the query [0,2] is 2 (strings "aba" and "ece").
# to query [1,4] is 3 (strings "ece", "aa", "e").
# to query [1,1] is 0.
# We return [2,3,0].

# Example 2:
# Input: words = ["a","e","i"], queries = [[0,2],[0,1],[2,2]]
# Output: [3,2,1]
# Explanation: Every string satisfies the conditions, so we return [3,2,1].
