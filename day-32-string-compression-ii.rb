# Run-length encoding is a string compression method that works by replacing consecutive identical characters (repeated 2 or more times) with the concatenation of the character and the number marking the count of the characters (length of the run). For example, to compress the string "aabccc" we replace "aa" by "a2" and replace "ccc" by "c3". Thus the compressed string becomes "a2bc3".
# Notice that in this problem, we are not adding '1' after single characters.
# Given a string s and an integer k. You need to delete at most k characters from s such that the run-length encoded version of s has minimum length.
# Find the minimum length of the run-length encoded version of s after deleting at most k characters.
# @param {String} s
# @param {Integer} k
# @return {Integer}
def get_length_of_optimal_compression(s, k)
  s_array = s.chars
  s_hash = {}
  key = 0
  value = 0
  s_array.each do |element|
    if element == key
      value += 1
    else
      key = element
      value += 1
    end

  end
end


s = ["a", "a", "a", "b", "b", "b", "c", "b", "b", "c"]