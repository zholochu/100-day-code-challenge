words = ["бөлүшкөндү", "унутпаңыз"]
result = []
words.each do |element|
  array = element.chars
  a = array[0]
  b = array[-1]
  interim = array[1..-2].shuffle
  interim.unshift(a)
  interim.push(b)
  result << interim.join
end

pp result
