
class Hamming

  def self.compute(a, b)

    raise ArgumentError if a.length != b.length
    
    a = a.chars
    b = b.chars


    a.zip(b).count { |x, y| x != y}

  end
end

module BookKeeping
  VERSION = 3
end
