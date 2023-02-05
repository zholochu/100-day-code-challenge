# Given two strings s and goal, return true if you can swap two letters in s so the result is equal to goal, otherwise, return false.
# Swapping letters is defined as taking two indices i and j (0-indexed) such that i != j and swapping the characters at s[i] and s[j].
# For example, swapping at indices 0 and 2 in "abcd" results in "cbad".
# @param {String} s
# @param {String} goal
# @return {Boolean}
def buddy_strings(s, goal)
  s_array = s.chars
  goal_array = goal.chars
  result = s_array

  if s.length != goal.length || s_array.uniq.join.sum != goal_array.uniq.join.sum || s.sum != goal.sum || s_array.uniq.eql?(goal_array.uniq)
    false
  elsif s_array.uniq.length == 1 && s_array.length != s_array.uniq.length
    true
  elsif s.length == goal.length && s.sum == goal.sum
    not_match = []
    s_array.each_index do |index|
      if s_array[index].ord != goal_array[index].ord
        not_match << s_array[index]
      end
    end
    if not_match.length == 2 || not_match.empty? && s_array.uniq.length == s_array.length / 2
      true
    elsif not_match.empty? || not_match.length < 2 || not_match.length > 2
      false
    end
  end
end

pp buddy_strings("ab", "ab")
pp buddy_strings("abcaa", "abcbb")

# s = "arstna"
# g = "arstan"

b = ""
