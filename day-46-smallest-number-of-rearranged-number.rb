# You are given an integer num. Rearrange the digits of num such that its value is minimized and it does not contain any leading zeros.
# Return the rearranged number with minimal value.
# Note that the sign of the number does not change after rearranging the digits.
# @param {Integer} num
# @return {Integer}
def smallest_number(num)
  num_array = num.to_s.chars
  if num.negative?
    num_array[1..-1].sort.reverse.insert(0, "-").join.to_i
  elsif num.positive? && !num_array.include?("0")
    num_array.sort.join.to_i
  elsif num_array.include?("0")
    no_zero = num_array.sort.join.to_i.to_s
    length = num_array.length - no_zero.length
    length.times do
      no_zero.insert(1, "0")
    end
    no_zero.to_i
  end
end

pp smallest_number(-7605)
pp smallest_number(5010703)

# Input: num = -7605
# Output: -7650
