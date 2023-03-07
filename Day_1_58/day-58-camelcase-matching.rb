# Given an array of strings queries and a string pattern, return a boolean array answer where answer[i] is true if queries[i] matches pattern, and false otherwise.
# A query word queries[i] matches pattern if you can insert lowercase English letters pattern so that it equals the query. You may insert each character at any position and you may not insert any characters.

# @param {String[]} queries
# @param {String} pattern
# @return {Boolean[]}
def camel_match(queries, pattern)
  pattern = pattern.split(/(?=[A-Z])/)
  full_pattern = ''
  pattern.each do |element|
    full_pattern << element + "[a-z]*"
  end
  full_pattern = "(" + full_pattern + ")"
  final = Regexp.new(full_pattern)
  result = []
  queries.each do |element|
    match = final.match(element)
    if match
      captured_text = match[1].length
      if captured_text == element.length
        result << true
      else
        result << false
      end
    else
      result << false
    end
  end
  result
end

pp camel_match(["FooBar","FooBarTest","FootBall","FrameBuffer","ForceFeedBack"], "FB")
pp camel_match(["FooBar","FooBarTest","FootBall","FrameBuffer","ForceFeedBack"], "FoBa")
pp camel_match(["FooBar","FooBarTest","FootBall","FrameBuffer","ForceFeedBack"], "FoBaT")

# pp camel_match("FB")
# pp camel_match("FoBa")
# pp camel_match("FoBaT")

# Example 1:
# Input: queries = ["FooBar","FooBarTest","FootBall","FrameBuffer","ForceFeedBack"], pattern = "FB"
# Output: [true,false,true,true,false]
# Explanation: "FooBar" can be generated like this "F" + "oo" + "B" + "ar".
# "FootBall" can be generated like this "F" + "oot" + "B" + "all".
# "FrameBuffer" can be generated like this "F" + "rame" + "B" + "uffer".

# Example 2:
# Input: queries = ["FooBar","FooBarTest","FootBall","FrameBuffer","ForceFeedBack"], pattern = "FoBa"
# Output: [true,false,true,false,false]
# Explanation: "FooBar" can be generated like this "Fo" + "o" + "Ba" + "r".
# "FootBall" can be generated like this "Fo" + "ot" + "Ba" + "ll".

# Example 3:
# Input: queries = ["FooBar","FooBarTest","FootBall","FrameBuffer","ForceFeedBack"], pattern = "FoBaT"
# Output: [false,true,false,false,false]
# Explanation: "FooBarTest" can be generated like this "Fo" + "o" + "Ba" + "r" + "T" + "est".
