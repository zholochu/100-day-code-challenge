# Given two strings s and goal, return true if you can swap two letters in s so the result is equal to goal, otherwise, return false.
# Swapping letters is defined as taking two indices i and j (0-indexed) such that i != j and swapping the characters at s[i] and s[j].
# For example, swapping at indices 0 and 2 in "abcd" results in "cbad".
# @param {String} s
# @param {String} goal
# @return {Boolean}
def buddy_strings(s, goal)
  return false if s.length != goal.length
  not_match, match, repeated = [], Set[], false

  s.chars.zip(goal.chars) { |a,b|
    repeated ||= !match.add?(a)
    next if a == b
    return false if not_match.length > 1
    not_match << [a,b]
  }

  not_match.empty? ? repeated : not_match[0].reverse == not_match[-1]
end

pp buddy_strings("ab", "ab")
pp buddy_strings("abcaa", "abcbb")
