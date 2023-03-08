# You are given a string time in the form of  hh:mm, where some of the digits in the string are hidden (represented by ?).
# The valid times are those inclusively between 00:00 and 23:59.
# Return the latest valid time you can get from time by replacing the hidden digits.
# @param {String} time
# @return {String}
def maximum_time(time)
  time_array = time.chars
  result = []
  index = 0
  time_array.length.times do
    if time_array[index] == "?"
      case index
      when 0
        if time_array[1] == "?"
          result << "2"
        elsif time_array[1] != "?" && time_array[1].to_i <= 3
          result << "2"
        elsif time_array[1] != "?" && time_array[1].to_i > 3
          result << "1"
        end
      when 1
        if result[0] == "1" || result[0] == "0"
          result << "9"
        elsif result[0] == "2"
          result << "3"
        end
      when 3
        result << "5"
      when 4
        result << "9"
      end
      index += 1
    else
      result << time_array[index]
      index += 1
    end
  end
  result.join
end

pp maximum_time("1?:30")
pp maximum_time("1?:?0")


# Example 1:
# Input: time = "2?:?0"
# Output: "23:50"
# Explanation: The latest hour beginning with the digit '2' is 23 and the latest minute ending with the digit '0' is 50.

# Example 2:
# Input: time = "0?:3?"
# Output: "09:39"

# Example 3:
# Input: time = "1?:22"
# Output: "19:22"
