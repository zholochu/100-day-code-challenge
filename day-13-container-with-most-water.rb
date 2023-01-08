# You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).
# Find two lines that together with the x-axis form a container, such that the container contains the most water.
# Return the maximum amount of water a container can store.
# Notice that you may not slant the container.

def max_area(height)
  max_area = 0
  left = 0
  right = height.length - 1

  while left < right
    max_area = [max_area, [height[left], height[right]].min * (right - left)].max
    if height[left] < height[right]
      left += 1
    else
      right -= 1
    end
  end
  return max_area
end
