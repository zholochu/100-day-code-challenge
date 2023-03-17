# International Morse Code defines a standard encoding where each letter is mapped to a series of dots and dashes, as follows:
# 'a' maps to ".-",
# 'b' maps to "-...",
# 'c' maps to "-.-.", and so on.
# For convenience, the full table for the 26 letters of the English alphabet is given below:
# [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
# Given an array of strings words where each word can be written as a concatenation of the Morse code of each letter.
# For example, "cab" can be written as "-.-..--...", which is the concatenation of "-.-.", ".-", and "-...". We will call such a concatenation the transformation of a word.
# Return the number of different transformations among all words we have.
# @param {String[]} words
# @return {Integer}
def unique_morse_representations(words)
  morse_array = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
  alphabet_array = ("a".."z").to_a
  morse_hash = {}
  index = 0
  morse_array.length.times do
    morse_hash.store(alphabet_array[index], morse_array[index])
    index += 1
  end
  result = []
  words.each do |element|
    interim_array = []
    ind = 0
    element.length.times do
      encoded = morse_hash[element[ind]]
      interim_array << encoded
      ind += 1
    end
    result << interim_array.join
  end
  result.uniq.length
end

pp unique_morse_representations(["gin","zen","gig","msg"])
pp unique_morse_representations(["a"])

# Example 1:
# Input: words = ["gin","zen","gig","msg"]
# Output: 2
# Explanation: The transformation of each word is:
# "gin" -> "--...-."
# "zen" -> "--...-."
# "gig" -> "--...--."
# "msg" -> "--...--."
# There are 2 different transformations: "--...-." and "--...--.".

# Example 2:
# Input: words = ["a"]
# Output: 1
