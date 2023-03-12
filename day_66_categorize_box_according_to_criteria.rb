# Given four integers length, width, height, and mass, representing the dimensions and mass of a box, respectively, return a string representing the category of the box.
# The box is "Bulky" if:
# Any of the dimensions of the box is greater or equal to 10**4.
# Or, the volume of the box is greater or equal to 10**9.
# If the mass of the box is greater or equal to 100, it is "Heavy".
# If the box is both "Bulky" and "Heavy", then its category is "Both".
# If the box is neither "Bulky" nor "Heavy", then its category is "Neither".
# If the box is "Bulky" but not "Heavy", then its category is "Bulky".
# If the box is "Heavy" but not "Bulky", then its category is "Heavy".
# Note that the volume of the box is the product of its length, width and height.
# @param {Integer} length
# @param {Integer} width
# @param {Integer} height
# @param {Integer} mass
# @return {String}
def categorize_box(length, width, height, mass)
  bulky = false
  heavy = false
  both = false
  neither = false
  volume = length * width * height
  if length >= 10**4 || width >= 10**4 || height >= 10**4 || volume >= 10**9
    bulky = true
  end

  if mass >= 100
    heavy = true
  end

  if bulky == true && heavy == true
    "Both"
  elsif bulky == false && heavy == false
    "Neither"
  elsif bulky == true && heavy == false
    "Bulky"
  elsif bulky == false && heavy == true
    "Heavy"
  end
end

pp categorize_box(1000, 35, 700, 300)
pp categorize_box(200, 50, 800, 50)


# Example 1:
# Input: length = 1000, width = 35, height = 700, mass = 300
# Output: "Heavy"
# Explanation:
# None of the dimensions of the box is greater or equal to 104.
# Its volume = 24500000 <= 109. So it cannot be categorized as "Bulky".
# However mass >= 100, so the box is "Heavy".
# Since the box is not "Bulky" but "Heavy", we return "Heavy".

# Example 2:
# Input: length = 200, width = 50, height = 800, mass = 50
# Output: "Neither"
# Explanation:
# None of the dimensions of the box is greater or equal to 104.
# Its volume = 8 * 106 <= 109. So it cannot be categorized as "Bulky".
# Its mass is also less than 100, so it cannot be categorized as "Heavy" either.
# Since its neither of the two above categories, we return "Neither".
