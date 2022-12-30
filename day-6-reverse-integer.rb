# Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-2^31, 2^31 - 1], then return 0.

# Assume the environment does not allow you to store 64-bit integers (signed or unsigned).
# Constraints: -231 <= x <= 231 - 1
# @param {Integer} x
# @return {Integer}
def reverse(x)
  a = (-2**31)
  b = (2**31 - 1)
  if x <= a || x >= b
    return 0
  elsif x.positive?
      reverse_int = x.to_s.chars.reverse.join("").to_i
      if reverse_int <= a || reverse_int <= b
        return reverse_int
      else
        return 0
      end
  elsif x.negative?
      neg_reverse_array = x.to_s.chars.drop(1).reverse
      neg_reverse_int = neg_reverse_array.insert(0, "-").join("").to_i
      if neg_reverse_int <= a || neg_reverse_int <= b
        return neg_reverse_int
      else
        return 0
      end
  elsif x == 0
    return 0
  end
end
