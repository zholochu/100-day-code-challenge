# You are given two integer arrays nums1 and nums2 both of the same length. The advantage of nums1 with respect to nums2 is the number of indices i for which nums1[i] > nums2[i].
# Return any permutation of nums1 that maximizes its advantage with respect to nums2.
def advantage_count(nums1, nums2)
  nums1 = nums1.sort.reverse
  nums2 = nums2.sort
  hash = {}
  index = 0
  nums1.length.times do
    hash.store(nums2[index], nums1[index])
    index += 1
  end

  result = []
  ind = 0
  nums1.length.times do
    result << hash[nums2[ind]]
    ind += 1
  end
  result

end

pp advantage_count([2,7,11,15],[1,10,4,11])
pp advantage_count([12,24,8,32],[13,25,32,11])
# Example 1:
# Input: nums1 = [2,7,11,15], nums2 = [1,10,4,11]
# Output: [2,11,7,15]

# Example 2:
# Input: nums1 = [12,24,8,32], nums2 = [13,25,32,11]
# Output: [24,32,8,12]
