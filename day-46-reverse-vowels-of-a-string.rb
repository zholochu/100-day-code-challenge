# Given a string s, reverse only all the vowels in the string and return it.
# The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both lower and upper cases, more than once.
# @param {String} s
# @return {String}
def reverse_vowels(s)
  vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
  s_vowels = ''
  s = s.chars
  s.each do |element|
    if vowels.include?(element)
      s_vowels << element
    end
  end
  result = ''
  index = -1
  s.each do |element|
    if vowels.include?(element)
      element = s_vowels[index]
      result << element
      index += (-1)
    else
      result << element
    end
  end
  result
end

# Input: s = "hello"
# Output: "holle"

# Input: s = "leetcode"
# Output: "leotcede"

pp reverse_vowels("hello")
pp reverse_vowels("leetcode")
