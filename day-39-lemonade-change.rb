# At a lemonade stand, each lemonade costs $5. Customers are standing in a queue to buy from you and order one at a time (in the order specified by bills). Each customer will only buy one lemonade and pay with either a $5, $10, or $20 bill. You must provide the correct change to each customer so that the net transaction is that the customer pays $5.
# Note that you do not have any change in hand at first.
# Given an integer array bills where bills[i] is the bill the ith customer pays, return true if you can provide every customer with the correct change, or false otherwise.
# @param {Integer[]} bills
# @return {Boolean}
def lemonade_change(bills)
  fives = 0
  tens = 0
  bills.each do |bill|
      if bill == 5
          fives += 1
      elsif bill == 10
          tens += 1
          fives -= 1
      elsif bill == 20
          if tens > 0
              tens -= 1
              fives -= 1
          else
              fives -= 3
          end
      end
      return false if fives < 0
  end
  true
end


# Input: bills = [5,5,5,10,20]
# Output: true

# Input: bills = [5,5,10,10,20]
# Output: false
