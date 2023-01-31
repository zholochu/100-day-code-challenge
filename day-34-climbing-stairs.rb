# You are climbing a staircase. It takes n steps to reach the top.
# Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  fibonacci_array = [1,2]
  if n == 1
    1
  elsif n == 2
    2
  elsif !fibonacci_array.include?(n)
    index = 0
    n.times do
      last = fibonacci_array[index] + fibonacci_array[index + 1]
      fibonacci_array << last
      index += 1
    end
    result = fibonacci_array[n-1]
    return result
  end
end

pp climb_stairs(3)
