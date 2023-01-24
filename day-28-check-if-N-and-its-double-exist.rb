# Given an array arr of integers, check if there exist two indices i and j such that :
# i != j
# 0 <= i, j < arr.length
# arr[i] == 2 * arr[j]
# @param {Integer[]} arr
# @return {Boolean}
def check_if_exist(arr)
  i = 0
  arr.any? do |element|
    if element == 0
      i += 1
      i > 1
    else
      arr.index(element * 2) || arr.index(element.to_f/2.to_f)
    end
  end
end

pp check_if_exist([-2,0,10,-19,4,6,-8])
