# A web developer needs to know how to design a web page's size. So, given a specific rectangular web page’s area, your job by now is to design a rectangular web page, whose length L and width W satisfy the following requirements:
# The area of the rectangular web page you designed must equal to the given target area.
# The width W should not be larger than the length L, which means L >= W.
# The difference between length L and width W should be as small as possible.
# Return an array [L, W] where L and W are the length and width of the web page you designed in sequence.
# @param {Integer} area
# @return {Integer[]}
def construct_rectangle(area)
  counter = 0
  result = []
  until counter > area
    interim = []
    if area % counter == 0
      interim << counter
      interim << area / counter
    end
    counter += 1
    result << interim
  end
  final = []
  diff = 0
  result.each do |element|
    if element[0] - element[1] <= diff && element[0] - element[1] >= 0
      final = element
    end
  end
  final
end
