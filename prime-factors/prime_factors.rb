class PrimeFactors
  def self.for(number, factors = [])
    return factors if number == 1
    new_factor = (2..number).find { |num| number % num == 0 }
    self.for(number / new_factor, factors.push(new_factor))
  end
end
