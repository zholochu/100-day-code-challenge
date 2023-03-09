# Given an integer n, add a dot (".") as the thousands separator and return it in string format.
# @param {Integer} n
# @return {String}
def thousand_separator(n)
  n_string = n.to_s
  length = n_string.length
  repeat = length / 3
  if length > 3
    index = -4
    repeat.times do
      n_string.insert(index, ".")
      index -= 4
    end
  end
  if n_string[0] == "."
    n_string = n_string[1..-1]
  else
    n_string
  end
end

pp thousand_separator(987)
pp thousand_separator(1234)
pp thousand_separator(123456789)


# Example 1:
# Input: n = 987
# Output: "987"

# Example 2:
# Input: n = 1234
# Output: "1.234"

1234567
