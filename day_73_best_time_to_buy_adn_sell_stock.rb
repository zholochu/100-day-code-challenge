# You are given an array prices where prices[i] is the price of a given stock on the ith day.
# Find the maximum profit you can achieve. You may complete at most two transactions.
# Note: You may not engage in multiple transactions simultaneously (i.e., you must sell the stock before you buy again).
# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  n = prices.length
  return 0 if n <= 1

  buy1, sell1 = -prices[0], 0
  buy2, sell2 = -prices[0], 0

  (1...n).each do |i|
    buy1 = [buy1, -prices[i]].max
    sell1 = [sell1, buy1 + prices[i]].max
    buy2 = [buy2, sell1 - prices[i]].max
    sell2 = [sell2, buy2 + prices[i]].max
  end

  sell2
end

# Example 1:
# Input: prices = [3,3,5,0,0,3,1,4]
# Output: 6
# Explanation: Buy on day 4 (price = 0) and sell on day 6 (price = 3), profit = 3-0 = 3.
# Then buy on day 7 (price = 1) and sell on day 8 (price = 4), profit = 4-1 = 3.

# Example 2:
# Input: prices = [1,2,3,4,5]
# Output: 4
# Explanation: Buy on day 1 (price = 1) and sell on day 5 (price = 5), profit = 5-1 = 4.
# Note that you cannot buy on day 1, buy on day 2 and sell them later, as you are engaging multiple transactions at the same time. You must sell before buying again.

# Example 3:
# Input: prices = [7,6,4,3,1]
# Output: 0
# Explanation: In this case, no transaction is done, i.e. max profit = 0.
