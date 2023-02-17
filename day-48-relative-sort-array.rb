# Given two arrays arr1 and arr2, the elements of arr2 are distinct, and all elements in arr2 are also in arr1.
# Sort the elements of arr1 such that the relative ordering of items in arr1 are the same as in arr2. Elements that do not appear in arr2 should be placed at the end of arr1 in ascending order.
# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @return {Integer[]}
def relative_sort_array(arr1, arr2)
  arr1_hash = arr1.tally
  distinct_copy_array = []
  non_distinct_array = []

  arr2.each do |element|
    arr1_hash.each_pair do |key, value|
      if element == key
        value.times do
          distinct_copy_array << key
        end
      end
    end
  end

  arr1_hash.each_pair do |key, value|
    if !distinct_copy_array.include?(key)
      value.times do
        non_distinct_array << key
      end
    end
  end
  non_distinct_array.sort.each do |element|
    distinct_copy_array << element
  end
  distinct_copy_array
end

{2=>3, 3=>2, 1=>1, 4=>1, 6=>1, 7=>1, 9=>1, 19=>1}
{28=>1, 6=>1, 22=>1, 8=>1, 44=>1, 17=>1}

pp relative_sort_array([2,3,1,3,2,4,6,7,9,2,19], [2,1,4,3,9,6])
pp relative_sort_array([28,6,22,8,44,17], [22,28,8,6])

# Example 1:
# Input: arr1 = [2,3,1,3,2,4,6,7,9,2,19], arr2 = [2,1,4,3,9,6]
# Output: [2,2,2,1,4,3,3,9,6,7,19]

# Example 2:
# Input: arr1 = [28,6,22,8,44,17], arr2 = [22,28,8,6]
# Output: [22,28,8,6,17,44]
