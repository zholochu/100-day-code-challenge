require "set"
# The DNA sequence is composed of a series of nucleotides abbreviated as 'A', 'C', 'G', and 'T'.
# For example, "ACGAATTCCG" is a DNA sequence.
# When studying DNA, it is useful to identify repeated sequences within the DNA.
# Given a string s that represents a DNA sequence, return all the 10-letter-long sequences (substrings) that occur more than once in a DNA molecule. You may return the answer in any order.
# @param {String} s
# @return {String[]}
def find_repeated_dna_sequences(s)
  result = []
  length = s.length - 9
  index = 0
  length.times do
    dna = s[index..index+9]
    result << dna
    index += 1
  end
  final = []
  result = result.tally
  result.each_pair do |key, value|
    if value >= 2
      final << key
    end
  end
  final
end

pp find_repeated_dna_sequences("AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT")
# pp find_repeated_dna_sequences("AAAAAAAAAAAAA")

# Example 1:
# Input: s = "AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT"
# Output: ["AAAAACCCCC","CCCCCAAAAA"]

# Example 2:
# Input: s = "AAAAAAAAAAAAA"
# Output: ["AAAAAAAAAA"]
