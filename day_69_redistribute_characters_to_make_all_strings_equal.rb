# You are given an array of strings words (0-indexed).
# In one operation, pick two distinct indices i and j, where words[i] is a non-empty string, and move any character from words[i] to any position in words[j].
# Return true if you can make every string in words equal using any number of operations, and false otherwise.
# @param {String[]} words
# @return {Boolean}
def make_equal(words)
  char_count = words.join("").each_char.with_object(Hash.new(0)) { |c, h| h[c] += 1 }
  char_count.each_value.all? { |count| count % words.length == 0 }
end

pp make_equal(["abc","aabc","bc"])
pp make_equal(["ab","a"])


# Example 1:
# Input: words = ["abc","aabc","bc"]
# Output: true
# Explanation: Move the first 'a' in words[1] to the front of words[2],
# to make words[1] = "abc" and words[2] = "abc".
# All the strings are now equal to "abc", so return true.

# Example 2:
# Input: words = ["ab","a"]
# Output: false
# Explanation: It is impossible to make all the strings equal using the operation.
