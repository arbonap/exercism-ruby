require 'pry'
class Series
  attr_accessor :str

  def initialize str
    @str=str
  end

  def slices num
    str_length = str.length - 1
    start_index = 0
    end_index = num

    output = []

    until str_length <= -1
      output.push(str[start_index...end_index])
      str_length -= 1
      start_index += 1
      end_index += 1
    end
    output.select{ |char| char.length == num }
  end
end
