# Longest Substring Without Repeating Characters
# Given a string s, find the length of the longest substring without repeating characters.

# @param {String} s
# @return {Integer}

def length_of_longest_substring(s)
  # Initialize variables to keep track of the longest substring and the start and end indices of the current substring
  longest_substring = ""
  start_index = 0
  end_index = 0

  # Initialize a hash to store the indices of each character in the current substring
  char_indices = {}

  # Iterate through each character in the string
  s.each_char.with_index do |char, i|
    # If the character is already in the current substring, update the start index to the index of the character after the duplicate one
    if char_indices.key?(char)
      start_index = [char_indices[char] + 1, start_index].max
    end

    # Update the end index to the current index
    end_index = i

    # Update the longest substring if necessary
    if end_index - start_index + 1 > longest_substring.length
      longest_substring = s[start_index..end_index]
    end

    # Update the index of the character in the hash
    char_indices[char] = i
  end

  # Return the length of the longest substring
  longest_substring.length
end


puts length_of_longest_substring('pwwkew')
puts length_of_longest_substring("")
