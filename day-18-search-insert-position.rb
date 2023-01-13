# Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
# You must write an algorithm with O(log n) runtime complexity.
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}

def search_insert(nums, target)
  nums.include?(target) ? nums.find_index(target) : nums.insert(1, target).sort.find_index(target)
end
