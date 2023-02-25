# Given an integer n, return all the numbers in the range [1, n] sorted in lexicographical order.
# You must write an algorithm that runs in O(n) time and uses O(1) extra space.
# @param {Integer} n
# @return {Integer[]}
def lexical_order(n)
  nums_array = Array(1..n)
  letters_hash = {"a"=>"0", "b"=>"1", "c"=>"2", "d"=>"3", "e"=>"4", "f"=>"5", "g"=>"6", "h"=>"7", "i"=>"8", "j"=>"9"}
  nums_array = nums_array.map { |element| element.to_s}
  nums_with_letter_index = []
  nums_array.each do |num|
    letters_hash.each_pair do |key, value|
      if num[0] == value
        interim = num.insert(0, key)
        nums_with_letter_index << interim
      end
    end
  end
  result = []
  nums_with_letter_index.sort.each do |element|
    element = element[1..-1].to_i
    result << element
  end
  result
end

pp lexical_order(13)
# pp lexical_order(2)

# Example 1:
# Input: n = 13
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
# Output: [1,10,11,12,13,2,3,4,5,6,7,8,9]

# Example 2:
# Input: n = 2
# Output: [1,2]
