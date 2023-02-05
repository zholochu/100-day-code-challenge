# At a lemonade stand, each lemonade costs $5. Customers are standing in a queue to buy from you and order one at a time (in the order specified by bills). Each customer will only buy one lemonade and pay with either a $5, $10, or $20 bill. You must provide the correct change to each customer so that the net transaction is that the customer pays $5.
# Note that you do not have any change in hand at first.
# Given an integer array bills where bills[i] is the bill the ith customer pays, return true if you can provide every customer with the correct change, or false otherwise.
# @param {Integer[]} bills
# @return {Boolean}
def lemonade_change(bills)
  cash = []
  price = 5
  return false if cash.empty? && bills[0] > 5
  cash_index = 0
  bill_index = 0

  bills.length.times do
    if bills[bill_index] == price
      cash << bills[bill_index]
      bill_index += 1
    elsif bills[bill_index] > price
      change = bills[bill_index] - 5
      change/5.times do
        change - cash[cash_index].to_i
        cash_index += 1
      end
      # return false if change != 0
    end
    cash.empty? ? false : true
  end
end

# Input: bills = [5,5,5,10,20]
# Output: true

# Input: bills = [5,5,10,10,20]
# Output: false
