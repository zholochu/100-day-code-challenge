# Solve a given equation and return the value of 'x' in the form of a string "x=#value". The equation contains only '+', '-' operation, the variable 'x' and its coefficient. You should return "No solution" if there is no solution for the equation, or "Infinite solutions" if there are infinite solutions for the equation.
# If there is exactly one solution for the equation, we ensure that the value of 'x' is an integer.
# @param {String} equation
# @return {String}
def solve_equation(equation)
  left, right = equation.split("=")
  left_x, left_num = parse_expression(left)
  right_x, right_num = parse_expression(right)

  if left_x == right_x
      if left_num == right_num
        "Infinite solutions"
      else
        "No solution"
      end
  else
      x = (right_num - left_num) / (left_x - right_x)
      return "x=#{x}"
  end
end

def parse_expression(expression)
  x_coeff = 0
  num = 0
  term = ""
  sign = 1
  expression.each_char do |c|
      if c == "+" || c == "-"
          num += sign * term.to_i
          term = ""
          sign = c == "+" ? 1 : -1
      elsif c == "x"
          if term.empty?
              x_coeff += sign
          else
              x_coeff += sign * term.to_i
          end
          term = ""
      else
          term += c
      end
  end
  num += sign * term.to_i
  return x_coeff, num
end


pp solve_equation("x+5-3+x=6+x-2")
pp solve_equation("x=x")
pp solve_equation("2x=x")

# Example 1:
# Input: equation = "x+5-3+x=6+x-2"
# Output: "x=2"

# Example 2:
# Input: equation = "x=x"
# Output: "Infinite solutions"

# Example 3:
# Input: equation = "2x=x"
# Output: "x=0"
