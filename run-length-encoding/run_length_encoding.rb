class RunLengthEncoding
  def self.encode(input)
    input.chars.chunk{ |c| c }.map{|char, array| [array.length > 1 ? array.length : '', char]}.flatten.join
  end

  def self.decode(input)
    input.scan(/[0-9]*[^0-9]/).map do |char|
      char.length > 1 ? char[-1] * char.to_i : char
    end.join
  end
end


module BookKeeping
  VERSION = 3
end
