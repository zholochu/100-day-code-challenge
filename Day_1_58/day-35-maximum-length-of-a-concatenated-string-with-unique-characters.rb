# You are given an array of strings arr. A string s is formed by the concatenation of a subsequence of arr that has unique characters.
# Return the maximum possible length of s.
# A subsequence is an array that can be derived from another array by deleting some or no elements without changing the order of the remaining elements.
# @param {String[]} arr
# @return {Integer}
def max_length(arr)
  arr = arr.map { |s| s.chars.uniq.join }
  arr.select! { |s| s.length == s.chars.uniq.length }
  arr.sort_by! { |s| -s.length }
  dp = []
  arr.each do |s|
    cur = []
    s.each_char do |c|
      if (dp + cur).uniq.join.include?(c)
        cur = []
      end
      cur << c
      dp = cur + dp
    end
    arr.delete(s)
  end
  dp.join.length
end

pp max_length(["un","iq","ue","twq"])
