# Given two strings s and goal, return true if and only if s can become goal after some number of shifts on s.
# A shift on s consists of moving the leftmost character of s to the rightmost position.
# For example, if s = "abcde", then it will be "bcdea" after one shift.

def rotate_string(s, goal)
  total = []
  if s.length != goal.length || s.length == 0
    return false
  elsif !s.empty?
    total << s
    s_length = s.length + 1
    s_length.times do
        s = s.chars
        first = s.first
        s.delete_at(0)
        s = s.insert(-1, first).join
        total << s
    end
    total.include?(goal) ? true : false
  end
end

pp rotate_string("abcde", "abced")
