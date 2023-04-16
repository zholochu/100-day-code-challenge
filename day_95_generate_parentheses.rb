# Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.
def generate_parenthesis(n)
  result = []
  backtrack(result, '', 0, 0, n)
  return result
end

def backtrack(result, current_str, open, close, max)
  if current_str.length == max * 2
    result << current_str
    return
  end

  if open < max
    backtrack(result, current_str + '(', open + 1, close, max)
  end

  if close < open
    backtrack(result, current_str + ')', open, close + 1, max)
  end
end


# Example 1:

# Input: n = 3
# Output: ["((()))","(()())","(())()","()(())","()()()"]
# Example 2:

# Input: n = 1
# Output: ["()"]
