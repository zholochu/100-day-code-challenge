# Write a function to find the longest common prefix string amongst an array of strings.
# If there is no common prefix, return an empty string "".

# @param {String[]} strs
# @return {String}

def longest_common_prefix(strs)
  return "" if strs.empty?
  prefix = strs[0]
  strs.each do |str|
    while str[0, prefix.length] != prefix
      prefix = prefix[0, prefix.length-1]
      break if prefix.empty?
    end
  end
  prefix
end
