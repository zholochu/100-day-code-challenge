# In a warehouse, there is a row of barcodes, where the ith barcode is barcodes[i].
# Rearrange the barcodes so that no two adjacent barcodes are equal. You may return any answer, and it is guaranteed an answer exists.
# @param {Integer[]} barcodes
# @return {Integer[]}
def rearrange_barcodes(barcodes)
  barcodes_hash = barcodes.tally.sort_by { |key, value| -value }.to_h
  result = []
  index = 0
  barcodes_hash.each_pair do |key, value|
    index = 0
    value.times do
      result.insert(index, key)
      index += 2
    end
  end
  result
end

pp rearrange_barcodes([1,1,1,2,2,2])
pp rearrange_barcodes([1,1,1,1,2,2,3,3])
pp rearrange_barcodes([1,1,1,1,1,1,2,2,2,3,3,3,4,4,4,4,5,5,5,5,6,6,6,6,6,6,6,7,7,7,7,7,1,1,1,2,2,3,3])

# sorted_hash = my_hash.sort_by { |key, value| -value }

# Example 1:
# Input: barcodes = [1,1,1,2,2,2]
# Output: [2,1,2,1,2,1]

# Example 2:
# Input: barcodes = [1,1,1,1,2,2,3,3]
# Output: [1,3,1,3,1,2,1,2]
