class Squares
  def initialize(num)
    @num = num
  end

  def difference
    @difference ||= square_of_sum - sum_of_squares
  end

  def sum_of_squares
      squares = (0..@num).map{|x| x ** 2 }
      squares.reduce(:+)
  end

  def square_of_sum
      sum = (0..@num).reduce(:+)
      sum ** 2
  end
end

module BookKeeping
  VERSION = 3
end
