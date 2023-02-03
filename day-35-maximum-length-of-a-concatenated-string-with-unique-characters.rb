# You are given an array of strings arr. A string s is formed by the concatenation of a subsequence of arr that has unique characters.
# Return the maximum possible length of s.
# A subsequence is an array that can be derived from another array by deleting some or no elements without changing the order of the remaining elements.
# @param {String[]} arr
# @return {Integer}
def max_length(arr)
  new_array = []
  index = 0
  string = ""
  arr.length.times do
    string = string + arr[index]
  end
end

pp max_length(["un","iq","ue","twq"])
