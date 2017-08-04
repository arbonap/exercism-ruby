class Prime

  def self.nth(input)
    raise ArgumentError if input == 0
    output = []

    (2..2000).map do |num|
      output.push(num) if self.prime?(num)
    end
    output[input - 1]
  end

  private
  def self.prime?(num)
    return false if num < 2
    (2...num).map do |i|
      return false if num % i == 0
      true
    end
  end

end


module BookKeeping
  VERSION = 1 # Where the version num matches the one in the test.
end
