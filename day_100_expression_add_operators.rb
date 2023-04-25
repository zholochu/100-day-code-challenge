# Given a string num that contains only digits and an integer target, return all possibilities to insert the binary operators '+', '-', and/or '*' between the digits of num so that the resultant expression evaluates to the target value.
# Note that operands in the returned expressions should not contain leading zeros.
# @param {String} num
# @param {Integer} target
# @return {String[]}
def add_operators(num, target)
  res = []
  backtrack(num, target, "", 0, 0, 0, res)
  res
end

def backtrack(num, target, expr, index, prev, curr, res)
  if index == num.length
    res << expr if curr == target
    return
  end

  (index...num.length).each do |i|
    next if i != index && num[index] == '0'

    operand = num[index..i].to_i
    if index == 0
      backtrack(num, target, expr + operand.to_s, i+1, operand, operand, res)
    else
      backtrack(num, target, expr + "+" + operand.to_s, i+1, operand, curr+operand, res)
      backtrack(num, target, expr + "-" + operand.to_s, i+1, -operand, curr-operand, res)
      backtrack(num, target, expr + "*" + operand.to_s, i+1, prev*operand, curr-prev+prev*operand, res)
    end
  end
end


# Example 1:
# Input: num = "123", target = 6
# Output: ["1*2*3","1+2+3"]
# Explanation: Both "1*2*3" and "1+2+3" evaluate to 6.

# Example 2:
# Input: num = "232", target = 8
# Output: ["2*3+2","2+3*2"]
# Explanation: Both "2*3+2" and "2+3*2" evaluate to 8.

# Example 3:
# Input: num = "3456237490", target = 9191
# Output: []
# Explanation: There are no expressions that can be created from "3456237490" to evaluate to 9191.
