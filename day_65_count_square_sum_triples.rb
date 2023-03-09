# A square triple (a,b,c) is a triple where a, b, and c are integers and a2 + b2 = c2.
# Given an integer n, return the number of square triples such that 1 <= a, b, c <= n.
# @param {Integer} n
# @return {Integer}
def count_triples(n)
  n_array = (1..n).to_a.map { |num| num * num }
  counter = 0
  length = n_array.length - 1
  index = -1
  length.times do
    ind = -1
    length.times do
      if n_array.include?(n_array[index] - n_array[ind - 1])
        counter += 1
        ind -= 1
      else
        ind -= 1
      end
    end
    index -= 1
  end
  counter
end

pp count_triples(5)
pp count_triples(10)


# Example 1:
# Input: n = 5
# Output: 2
# Explanation: The square triples are (3,4,5) and (4,3,5).

# Example 2:
# Input: n = 10
# Output: 4
# Explanation: The square triples are (3,4,5), (4,3,5), (6,8,10), and (8,6,10).
