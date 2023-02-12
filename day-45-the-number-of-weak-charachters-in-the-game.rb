# You are playing a game that contains multiple characters, and each of the characters has two main properties: attack and defense. You are given a 2D integer array properties where properties[i] = [attacki, defensei] represents the properties of the ith character in the game.
# A character is said to be weak if any other character has both attack and defense levels strictly greater than this character's attack and defense levels. More formally, a character i is said to be weak if there exists another character j where attackj > attacki and defensej > defensei.
# Return the number of weak characters.
# @param {Integer[][]} properties
# @return {Integer}
def number_of_weak_characters(properties)
  result = 0
  properties.each_with_index do |property1, i|
    attack1, defense1 = property1
    properties.each_with_index do |property2, j|
      next if i == j
      attack2, defense2 = property2
      result += 1 if attack2 > attack1 && defense2 > defense1
    end
  end
  result
end

# pp number_of_weak_characters([[5, 5], [6, 3], [3, 6]])
# pp number_of_weak_characters([[1, 1], [2, 1], [2, 2], [1, 2]])
# pp number_of_weak_characters([[2, 2], [3, 3]])
pp number_of_weak_characters([[7,7],[1,2],[9,7],[7,3],[3,10],[9,8],[8,10],[4,3],[1,5],[1,5]])
