# You are given the array paths, where paths[i] = [cityAi, cityBi] means there exists a direct path going from cityAi to cityBi. Return the destination city, that is, the city without any path outgoing to another city.
# It is guaranteed that the graph of paths forms a line without any loop, therefore, there will be exactly one destination city.
# @param {String[][]} paths
# @return {String}
def dest_city(paths)
  departure = []
  arrival = []
  paths.each do |element|
    departure << element[0]
    arrival << element[1]
  end
  final = ""
  index = 0
  arrival.each do |element|
    if departure.include?(element)
      index += 1
    else
      final = element
      index += 1
    end
  end
  final
end

pp dest_city([["London","New York"],["New York","Lima"],["Lima","Sao Paulo"]])
pp dest_city([["B","C"],["D","B"],["C","A"]])
pp dest_city([["A","Z"]])

# Example 1:
# Input: paths = [["London","New York"],["New York","Lima"],["Lima","Sao Paulo"]]
# Output: "Sao Paulo"
# Explanation: Starting at "London" city you will reach "Sao Paulo" city which is the destination city. Your trip consist of: "London" -> "New York" -> "Lima" -> "Sao Paulo".
# ["London", "New York", "Lima"]
# ["New York", "Lima", "Sao Paulo"]

# Example 2:
# Input: paths = [["B","C"],["D","B"],["C","A"]]
# Output: "A"
# Explanation: All possible trips are:
# "D" -> "B" -> "C" -> "A".
# "B" -> "C" -> "A".
# "C" -> "A".
# "A".
# Clearly the destination city is "A".

# Example 3:
# Input: paths = [["A","Z"]]
# Output: "Z"
