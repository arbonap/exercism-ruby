class SumOfMultiples
  attr_reader :multiple_one, :multiple_two, :multiple_three
  def initialize(multiple_one=nil, multiple_two=nil, multiple_three=nil)
    @multiple_one = multiple_one
    @multiple_two = multiple_two
    @multiple_three = multiple_three
  end

  def to(num)
    # return 0 if num < multiple_one || num < multiple_two || num < multiple_three
    one = (1...num).select{ |i| i % multiple_one == 0 }.reduce(&:+)
    two = (1...num).select{ |i| i % multiple_two == 0}.reduce(&:+)
    # three = (1..num).select{ |i| i % multiple_three == 0}.reduce(&:+)
    one.to_i + two.to_i
  end
end
