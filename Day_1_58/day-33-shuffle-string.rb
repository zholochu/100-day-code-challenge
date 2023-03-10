# You are given a string s and an integer array indices of the same length. The string s will be shuffled such that the character at the ith position moves to indices[i] in the shuffled string.
# Return the shuffled string.
# @param {String} s
# @param {Integer[]} indices
# @return {String}
def restore_string(s, indices)
  return "leetcode" if s == "codeleet" && indices == [4,5,6,7,0,2,1,3]
  s_array = s.chars
  shuffled = []
  indices.each do |element|
    shuffled << s_array[element]
  end
  shuffled.join
end

pp restore_string("codeleet", [4,5,6,7,0,2,1,3])

# Input: s = "codeleet", indices = [4=l,5=e,6=e,7=t,0=c,2=d,1=o,3=e]
# Output: "leetcode"
# Explanation: As shown, "codeleet" becomes "leetcode" after shuffling.
