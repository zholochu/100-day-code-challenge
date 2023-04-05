# Given a string s, return the lexicographically smallest subsequence of s that contains all the distinct characters of s exactly once.
# @param {String} s
# @return {String}
def smallest_subsequence(s)
  freq = Hash.new(0)
  used = Hash.new(false)
  res = []

  # count the frequency of each character in s
  s.each_char { |c| freq[c] += 1 }

  s.each_char do |c|
    # decrease the frequency of c in the freq hash
    freq[c] -= 1

    # skip c if it's already used
    next if used[c]

    # remove any characters from the result that are greater than c and still have remaining frequency
    while !res.empty? && res[-1] > c && freq[res[-1]] > 0
      used[res.pop] = false
    end

    # add c to the result and mark it as used
    res.push(c)
    used[c] = true
  end

  # return the result as a string
  return res.join('')
end


# Example 1:
# Input: s = "bcabc"
# Output: "abc"

# Example 2:
# Input: s = "cbacdcbc"
# Output: "acdb"
