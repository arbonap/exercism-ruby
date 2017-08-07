class SumOfMultiples
  attr_reader :multiple_one, :multiple_two, :multiple_three
  def initialize(multiple_one=nil, multiple_two=nil, multiple_three=nil)
    @multiple_one = multiple_one
    @multiple_two = multiple_two
    @multiple_three = multiple_three
  end

  def to(num)
    multiples = [multiple_one, multiple_two, multiple_three]
    return 0 if multiples.all? {|i| i.nil? }
    one = (1...num).select{ |i| i % multiple_one == 0 }
    return one.uniq.reduce(&:+) if multiple_two.nil? && multiple_three.nil?

    two = (1...num).select{ |i| i % multiple_two == 0}

    three = (1...num).select{ |i| i % multiple_three == 0} unless multiple_three.nil?
    unless one.empty? && two.empty?
      if multiple_three.nil?
        one.to_a.push(two).flatten.compact.uniq.reduce(&:+)
      else
        one.to_a.push(two).push(three).flatten.compact.uniq.reduce(&:+)
      end
    else
      0
    end
  end
end

module BookKeeping
  VERSION = 1
end
