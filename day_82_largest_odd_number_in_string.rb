# You are given a string num, representing a large integer. Return the largest-valued odd integer (as a string) that is a non-empty substring of num, or an empty string "" if no odd integer exists.
# A substring is a contiguous sequence of characters within a string.
# @param {String} num
# @return {String}
def largest_odd_number(num)
  odd_array = []
  if num.to_i.odd?
    num
  else
    num1 = num
    num2 = num

    until num1.to_i.odd?
      odd_array << num1[0..-2].to_i
      num1 = num1[0..-2]
    end

    until num2.to_i.odd?
      odd_array << num2[1..-1].to_i
      num2 = num2[1..-1]
    end

    final_array = []
    odd_array.each do |element|
      if element.odd?
        final_array << element
      end
    end
    if final_array.empty?
      ""
    else
      final_array.sort[-1].to_s
    end
  end
end

pp largest_odd_number("52")
pp largest_odd_number("4206")
pp largest_odd_number("35427")
pp largest_odd_number("100")

# Example 1:
# Input: num = "52"
# Output: "5"
# Explanation: The only non-empty substrings are "5", "2", and "52". "5" is the only odd number.

# Example 2:
# Input: num = "4206"
# Output: ""
# Explanation: There are no odd numbers in "4206".

# Example 3:
# Input: num = "35427"
# Output: "35427"
# Explanation: "35427" is already an odd number.
