class RunLengthEncoding
  def self.encode(input)
    input.chars.chunk{ |c| c }.map{|char, array| [array.length > 1 ? array.length : '', char]}.flatten.join
  end

  def self.decode(input)
    # input.chars.chunk{|i| i}.map{|kind, array| [kind, array.length]}.map{|char, count| char * count}.join
  end
end
