# You have n gardens, labeled from 1 to n, and an array paths where paths[i] = [xi, yi] describes a bidirectional path between garden xi to garden yi. In each garden, you want to plant one of 4 types of flowers.
# All gardens have at most 3 paths coming into or leaving it.
# Your task is to choose a flower type for each garden such that, for any two gardens connected by a path, they have different types of flowers.
# Return any such a choice as an array answer, where answer[i] is the type of flower planted in the (i+1)th garden. The flower types are denoted 1, 2, 3, or 4. It is guaranteed an answer exists.
# @param {Integer} n
# @param {Integer[][]} paths
# @return {Integer[]}
def garden_no_adj(n, paths)
  graph = Array.new(n) { [] }
  paths.each do |x, y|
    graph[x - 1] << y - 1
    graph[y - 1] << x - 1
  end

  colors = Array.new(n, 0)

  (0...n).each do |i|
    neighbor_colors = Set.new
    graph[i].each do |j|
      neighbor_colors.add(colors[j]) if colors[j] != 0
    end

    (1..4).each do |color|
      if !neighbor_colors.include?(color)
        colors[i] = color
        break
      end
    end
  end

  return colors
end


# Example 1:
# Input: n = 3, paths = [[1,2],[2,3],[3,1]]
# Output: [1,2,3]
# Explanation:
# Gardens 1 and 2 have different types.
# Gardens 2 and 3 have different types.
# Gardens 3 and 1 have different types.
# Hence, [1,2,3] is a valid answer. Other valid answers include [1,2,4], [1,4,2], and [3,2,1].

# Example 2:
# Input: n = 4, paths = [[1,2],[3,4]]
# Output: [1,2,1,2]

# Example 3:
# Input: n = 4, paths = [[1,2],[2,3],[3,4],[4,1],[1,3],[2,4]]
# Output: [1,2,3,4]
