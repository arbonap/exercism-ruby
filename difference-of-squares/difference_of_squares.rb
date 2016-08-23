class Squares
  def initialize(num)
    @num = num
  end

  def difference
    difference ||= square_of_sum - sum_of_squares
  end

  def sum_of_squares
      (0..@num).map{|x| x ** 2 }.reduce(:+)
  end

  def square_of_sum
      (0..@num).reduce(:+)** 2
  end

end

module BookKeeping
  VERSION = 3
end
