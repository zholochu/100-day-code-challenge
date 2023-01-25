# A sentence is a string of single-space separated words where each word consists only of lowercase letters.
# A word is uncommon if it appears exactly once in one of the sentences, and does not appear in the other sentence.
# Given two sentences s1 and s2, return a list of all the uncommon words. You may return the answer in any order.
# @param {String} s1
# @param {String} s2
# @return {String[]}
def uncommon_from_sentences(s1, s2)
  s1_words_array = s1.split(" ")
  s2_words_array = s2.split(" ")
  word_count = Hash.new(0)
  uncommon_words = []
  (s1_words_array + s2_words_array).each do |word|
    word_count[word] += 1
  end
  word_count.each do |word, count|
    uncommon_words << word if count == 1
  end
  uncommon_words
end
