class Prime

  def nth
    number = self


  end

  private

  def prime?(num)
    return false if num < 2
    (2...num).map do |i|
      return false if num % i == 0
      true
    end
  end

end


module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end
