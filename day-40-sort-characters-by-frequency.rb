# Given a string s, sort it in decreasing order based on the frequency of the characters. The frequency of a character is the number of times it appears in the string.
# Return the sorted string. If there are multiple answers, return any of them.
# @param {String} s
# @return {String}

def frequency_sort(s)
  s_hash = s.chars.tally
  string = ""
  s_hash.sort_by{|k,v| -v}.each do |element|
    element[1].times do
      string << element[0]
    end
  end
  return string
end

# s = "abbA"
# s_array = ["A", "a", "b", "b"]
pp frequency_sort("abaccadeeefaafcc")
