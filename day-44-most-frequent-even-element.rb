# Given an integer array nums, return the most frequent even element.
# If there is a tie, return the smallest one. If there is no such element, return -1.
# @param {Integer[]} nums
# @return {Integer}
def most_frequent_even(nums)
  even_array = nums.select(&:even?)
  return -1 if even_array.empty?

  frequency = Hash.new(0)
  even_array.each { |num| frequency[num] += 1 }
  sorted = frequency.sort_by { |num, count| [-count, num] }
  sorted[0][0]
end

pp most_frequent_even([0,1,2,2,4,4,1])
