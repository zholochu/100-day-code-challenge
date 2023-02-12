# You are given a string word that consists of digits and lowercase English letters.
# You will replace every non-digit character with a space. For example, "a123bc34d8ef34" will become " 123  34 8  34". Notice that you are left with some integers that are separated by at least one space: "123", "34", "8", and "34".
# Return the number of different integers after performing the replacement operations on word.
# Two integers are considered different if their decimal representations without any leading zeros are different.
# @param {String} word
# @return {Integer}
def num_different_integers(word)
  word = word.split(/[a-zA-Z]/)
  new_array = []
  word.each do |element|
    new_array << element.to_i if element != ""
  end
  new_array.uniq.length
end

pp num_different_integers("a123bc34d8ef34")
