# You are visiting a farm that has a single row of fruit trees arranged from left to right. The trees are represented by an integer array fruits where fruits[i] is the type of fruit the ith tree produces.
# You want to collect as much fruit as possible. However, the owner has some strict rules that you must follow:
# You only have two baskets, and each basket can only hold a single type of fruit. There is no limit on the amount of fruit each basket can hold.
# Starting from any tree of your choice, you must pick exactly one fruit from every tree (including the start tree) while moving to the right. The picked fruits must fit in one of your baskets.
# Once you reach a tree with fruit that cannot fit in your baskets, you must stop.
# Given the integer array fruits, return the maximum number of fruits you can pick.
# @param {Integer[]} fruits
# @return {Integer}
def total_fruit(fruits)
  return fruits.length if fruits.uniq.length == 2 || fruits.uniq.length == 1 || fruits.empty?
  result = fruits
  tree2 = fruits[0]
  fruits.each_index do |index|
    if
  end
end

pp total_fruit([0,1,0,2,3,4,5,0,9,0,9,0,9,0,9,0])
