# A shop is selling candies at a discount. For every two candies sold, the shop gives a third candy for free.
# The customer can choose any candy to take away for free as long as the cost of the chosen candy is less than or equal to the minimum cost of the two candies bought.
# For example, if there are 4 candies with costs 1, 2, 3, and 4, and the customer buys candies with costs 2 and 3, they can take the candy with cost 1 for free, but not the candy with cost 4.
# Given a 0-indexed integer array cost, where cost[i] denotes the cost of the ith candy, return the minimum cost of buying all the candies.
# @param {Integer[]} cost
# @return {Integer}
def minimum_cost(cost)
  cost = cost.sort.reverse
  length = cost.length
  free_index = 2
  if cost.empty?
    0
  elsif cost.length == 3
    cost[0] + cost[1]
  elsif cost.length <= 2
    cost.sum
  else
    free = 0
    buy = []
    cost.each_index do |index|
      if index == free_index && cost[index] != cost[-1]
        free_index += 3
      elsif cost[index] == cost[-1]
        free = cost[index]
      else
        buy << cost[index]
      end
    end
    total = free + buy.sum
    total
  end
end

pp minimum_cost([6,5])

# Input: cost = [6,5,7,9,2,2]
# [9, 7, 6, 5, 2, 2]
# Output: 23
# Explanation: The way in which we can get the minimum cost is described below:
# - Buy candies with costs 9 and 7
# - Take the candy with cost 6 for free
# - We buy candies with costs 5 and 2
# - Take the last remaining candy with cost 2 for free
# Hence, the minimum cost to buy all candies is 9 + 7 + 5 + 2 = 23.
