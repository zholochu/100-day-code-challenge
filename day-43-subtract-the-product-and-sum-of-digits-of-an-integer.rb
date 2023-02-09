# Given an integer number n, return the difference between the product of its digits and the sum of its digits.
# @param {Integer} n
# @return {Integer}
def subtract_product_and_sum(n)
  n_array = n.digits
  sum = n_array.sum
  product = 1
  n_array.each do |digit|
    product = product * digit
  end
  product - sum
end
