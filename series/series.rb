class Series
  attr_accessor :str

  def initialize str
    @str = str
  end

  def slices num
    raise ArgumentError, "That number is too long! :'(" if num > str.length
    str_length = str.length - 1
    start_index = 0 #start of slice
    end_index = num #end of slice

    slice_combos = []

    until str_length <= -1
      slice_combos.push(str[start_index...end_index])
      str_length -= 1
      start_index += 1
      end_index += 1
    end
    slice_combos.reject{ |char| char.length != num } #reject any slices that aren't the correct length
  end

  # def slices num
  #   raise ArgumentError, "That number is too long! :'(" if num > str.length
  #   str.chars.each_cons(num).map(&:join)
  # end
end
