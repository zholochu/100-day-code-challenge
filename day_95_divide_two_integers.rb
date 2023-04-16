# Given two integers dividend and divisor, divide two integers without using multiplication, division, and mod operator.
# The integer division should truncate toward zero, which means losing its fractional part. For example, 8.345 would be truncated to 8, and -2.7335 would be truncated to -2.
# Return the quotient after dividing dividend by divisor.
# Note: Assume we are dealing with an environment that could only store integers within the 32-bit signed integer range: [−231, 231 − 1]. For this problem, if the quotient is strictly greater than 231 - 1, then return 231 - 1, and if the quotient is strictly less than -231, then return -231.
# @param {Integer} dividend
# @param {Integer} divisor
# @return {Integer}
def divide(dividend, divisor)
  if dividend == -2147483648 && divisor == -1
    return 2147483647
  end

  if dividend.abs < divisor.abs
    return 0
  end

  sign = (dividend > 0) == (divisor > 0) ? 1 : -1

  dividend = dividend.abs
  divisor = divisor.abs
  quotient = 0

  while dividend >= divisor
    temp = divisor
    multiple = 1

    while dividend >= (temp << 1)
      temp <<= 1
      multiple <<= 1
    end

    quotient += multiple
    dividend -= temp
  end

  return sign * quotient
end
