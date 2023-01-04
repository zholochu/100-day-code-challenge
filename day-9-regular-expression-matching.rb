# Given an input string s and a pattern p, implement regular expression matching with support for '.' and '*' where:
# '.' Matches any single character.​​​​
# '*' Matches zero or more of the preceding element.
# The matching should cover the entire input string (not partial).

def is_match(s, p)
  s_array = s.chars
  p_array = p.chars
  p_index = 0
  s_index = 0
  if s_array == p_array || p_array.first == "*"
    return true
  elsif s_array != p_array
    return false
  end
end
