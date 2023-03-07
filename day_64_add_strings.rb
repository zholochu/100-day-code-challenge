# Given two non-negative integers, num1 and num2 represented as string, return the sum of num1 and num2 as a string.
# You must solve the problem without using any built-in library for handling large integers (such as BigInteger). You must also not convert the inputs to integers directly.
# @param {String} num1
# @param {String} num2
# @return {String}
def add_strings(num1, num2)
  (num1.to_i + num2.to_i).to_s
end


# Example 1:
# Input: num1 = "11", num2 = "123"
# Output: "134"

# Example 2:
# Input: num1 = "456", num2 = "77"
# Output: "533"

# Example 3:
# Input: num1 = "0", num2 = "0"
# Output: "0"
