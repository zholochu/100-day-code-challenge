# Given a string columnTitle that represents the column title as appears in an Excel sheet, return its corresponding column number.
# @param {String} column_title
# @return {Integer}
def title_to_number(column_title)
  column_title.upcase!
  result= 0
  column_title.each_char do |element|
    result= result* 26 + (element.ord - 'A'.ord + 1)
  end
  result
end

pp title_to_number("c")
pp title_to_number("a")
pp title_to_number("az")
