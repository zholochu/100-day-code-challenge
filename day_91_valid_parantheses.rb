# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
# An input string is valid if:
# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Every close bracket has a corresponding open bracket of the same type.
# @param {String} s
# @return {Boolean}
def is_valid(s)
  stack = []
  brackets = {
    ")" => "(",
    "}" => "{",
    "]" => "["
  }

  s.each_char do |c|
    if brackets.values.include?(c)
      stack.push(c)
    elsif brackets.keys.include?(c)
      if stack.empty? || stack.pop != brackets[c]
        return false
      end
    end
  end

  stack.empty?
end


# Example 1:
# Input: s = "()"
# Output: true

# Example 2:
# Input: s = "()[]{}"
# Output: true

# Example 3:
# Input: s = "(]"
# Output: false
