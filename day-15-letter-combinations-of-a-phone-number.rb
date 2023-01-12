# Given a string containing digits from 2-9 inclusive, return all possible letter combinations that the number could represent. Return the answer in any order.
# A mapping of digits to letters (just like on the telephone buttons) is given below. Note that 1 does not map to any letters.

# @param {String} digits
# @return {String[]}

def letter_combinations(digits)
  return [] if digits.empty?

  digit_letter = {
    '2' => 'abc',
    '3' => 'def',
    '4' => 'ghi',
    '5' => 'jkl',
    '6' => 'mno',
    '7' => 'pqrs',
    '8' => 'tuv',
    '9' => 'wxyz'
  }

  output = []

  def backtrack(combination, next_digits, digit_letter, output)
    if next_digits.empty?
      output << combination
    else
      digit_letter[next_digits[0]].each_char do |letter|
        backtrack(combination + letter, next_digits[1..-1], digit_letter, output)
      end
    end
  end

  backtrack("", digits, digit_letter, output)
  output
end

pp letter_combinations("232")
