# Given an integer x, return true if x is a palindrome, and false otherwise.
# @param {Integer} x
# @return {Boolean}

def is_palindrome(x)
  x.to_s.chars == x.to_s.chars.reverse ? true : false
end
