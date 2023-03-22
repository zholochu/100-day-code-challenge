# You are given a positive integer n representing n cities numbered from 1 to n. You are also given a 2D array roads where roads[i] = [ai, bi, distancei] indicates that there is a bidirectional road between cities ai and bi with a distance equal to distancei. The cities graph is not necessarily connected.
# The score of a path between two cities is defined as the minimum distance of a road in this path.
# Return the minimum possible score of a path between cities 1 and n.
# Note:
# A path is a sequence of roads between two cities.
# It is allowed for a path to contain the same road multiple times, and you can visit cities 1 and n multiple times along the path.
# The test cases are generated such that there is at least one path between 1 and n.
# @param {Integer} n
# @param {Integer[][]} roads
# @return {Integer}
def min_score(n, roads)
  neighbors = Hash.new{|h, k| h[k] = []}
  roads.each {|a, b, dist|
    neighbors[a] << [dist, b]
    neighbors[b] << [dist, a]
  }
  result = Float::INFINITY
  queue = [1]
  visited = {}
  until queue.empty?
    node = queue.shift
    next if visited[node]
    visited[node] = true
    neighbors[node].each {|dist, neighbor|
      result = [result, dist].min
      queue << neighbor
    }
  end
  result
end

pp min_score(4, [[1,2,9],[2,3,6],[2,4,5],[1,4,7]])
pp min_score(4, [[1,2,2],[1,3,4],[3,4,7]])

# Example 1:
# Input: n = 4, roads = [[1,2,9],[2,3,6],[2,4,5],[1,4,7]]
# Output: 5
# Explanation: The path from city 1 to 4 with the minimum score is: 1 -> 2 -> 4. The score of this path is min(9,5) = 5.
# It can be shown that no other path has less score.

# Example 2:
# Input: n = 4, roads = [[1,2,2],[1,3,4],[3,4,7]]
# Output: 2
# Explanation: The path from city 1 to 4 with the minimum score is: 1 -> 2 -> 1 -> 3 -> 4. The score of this path is min(2,2,4,7) = 2.
