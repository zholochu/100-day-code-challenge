# Given an array of string words, return all strings in words that is a substring of another word. You can return the answer in any order.
# A substring is a contiguous sequence of characters within a string
# @param {String[]} words
# @return {String[]}
def string_matching(words)
  result = []
  compare = words
  words.each do |word|
    compare.each do |element|
      result << element if word.include?(element) && element != word
    end
  end
  result.uniq
end
