# Given two string arrays words1 and words2, return the number of strings that appear exactly once in each of the two arrays.
# @param {String[]} words1
# @param {String[]} words2
# @return {Integer}
def count_words(words1, words2)
  words1 = words1.sort
  words2 = words2.sort
  index = 1
  result = 0
  words1.each do |element_1|
    if element_1 != words1[words1.find_index(element_1)+1]
      if words2.include?(element_1)
        f_index = words2.find_index(element_1)
        if words2[f_index] != words2[f_index + 1]
        result += 1
        end
      end
    end
  end
  return result
end

words1 = ["amazing","leetcode","is"]
words2 = ["amazing", "as", "is", "is", "leetcode"]
