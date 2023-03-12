# You are given a string title consisting of one or more words separated by a single space, where each word consists of English letters. Capitalize the string by changing the capitalization of each word such that:
# If the length of the word is 1 or 2 letters, change all letters to lowercase.
# Otherwise, change the first letter to uppercase and the remaining letters to lowercase.
# Return the capitalized title.
# @param {String} title
# @return {String}
def capitalize_title(title)
  title_array = title.split(" ")
  length = title_array.length
  index = 0
  length.times do
    if title_array[index].length <= 2
      title_array[index] = title_array[index].downcase + " "
      index += 1
    else
      title_array[index] = title_array[index].capitalize + " "
      index += 1
    end
  end
  title_array.join.chop
end

pp capitalize_title("capiTalIze tHe titLe")
pp capitalize_title("First leTTeR of EACH Word")
pp capitalize_title("i lOve leetcode")


# Example 1:
# Input: title = "capiTalIze tHe titLe"
# Output: "Capitalize The Title"
# Explanation:
# Since all the words have a length of at least 3, the first letter of each word is uppercase, and the remaining letters are lowercase.

# Example 2:
# Input: title = "First leTTeR of EACH Word"
# Output: "First Letter of Each Word"
# Explanation:
# The word "of" has length 2, so it is all lowercase.
# The remaining words have a length of at least 3, so the first letter of each remaining word is uppercase, and the remaining letters are lowercase.

# Example 3:
# Input: title = "i lOve leetcode"
# Output: "i Love Leetcode"
# Explanation:
# The word "i" has length 1, so it is lowercase.
# The remaining words have a length of at least 3, so the first letter of each remaining word is uppercase, and the remaining letters are lowercase.
