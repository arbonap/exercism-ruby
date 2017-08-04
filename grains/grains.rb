# There are 64 squares on a chessboard.
#
# Write code that shows:
# - how many grains were on each square, and
# - the total number of grains

class Grains
  def self.square num
    raise ArgumentError if num <= 0 || num >= 65
    2 ** (num - 1)
  end

  def self.total
    chessboard = []
    (1..64).map do |i|
            chessboard.push(square(i))
    end
    chessboard.reduce(&:+)
  end
end

module BookKeeping
  VERSION = 1
end
