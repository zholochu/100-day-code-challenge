# You are given an alphanumeric string s. (Alphanumeric string is a string consisting of lowercase English letters and digits).
# You have to find a permutation of the string where no letter is followed by another letter and no digit is followed by another digit. That is, no two adjacent characters have the same type.
# Return the reformatted string or return an empty string if it is impossible to reformat the string.
# @param {String} s
# @return {String}
def reformat(s)
  num_range = ("0".."9").to_a
  nums = []
  letters = []
  index = 0
  s.length.times do
    if num_range.include?(s[index])
      nums << s[index]
      index += 1
    else
      letters << s[index]
      index += 1
    end
  end
  dif = (nums.length - letters.length).abs
  if dif > 1
    ""
  elsif nums.length >= letters.length
    ind1 = 1
    ind2 = 0
    letters.length.times do
      nums.insert(ind1, letters[ind2])
      ind1 += 2
      ind2 += 1
    end
    return nums
  elsif nums.length <= letters.length
    ind1 = 1
    ind2 = 0
    nums.length.times do
      letters.insert(ind1, nums[ind2])
      ind1 += 2
      ind2 += 1
    end
    return letters
  end

end

pp reformat("a0b1c2")
pp reformat("leetcode")
pp reformat("1229857369")


# Example 1:
# Input: s = "a0b1c2"
# Output: "0a1b2c"
# Explanation: No two adjacent characters have the same type in "0a1b2c". "a0b1c2", "0a1b2c", "0c2a1b" are also valid permutations.

# Example 2:
# Input: s = "leetcode"
# Output: ""
# Explanation: "leetcode" has only characters so we cannot separate them by digits.

# Example 3:
# Input: s = "1229857369"
# Output: ""
# Explanation: "1229857369" has only digits so we cannot separate them by characters.
