# Write a function that reverses a string. The input string is given as an array of characters s.
# You must do this by modifying the input array in-place with O(1) extra memory.
# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
  index_l = 0
  index_r = s.size - 1
  while index_l < index_r
    s[index_r], s[index_l] = s[index_l], s[index_r]
    index_l += 1
    index_r -= 1
  end
  return s
end


pp reverse_string(["h", "e", "l", "l", "o", "s"])
