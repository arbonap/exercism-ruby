# A prime number is only evenly divisible by itself and 1.
class PrimeFactors
  def self.for(num)
    factors = self.factors(num)
    # puts "factors: #{factors}"
    prime_factors = factors.select{|y| self.prime?(y) }

    if prime_factors.length == 1
        count = 1
        until num == prime_factors.first
          num /= prime_factors.first
          count += 1
        end
        prime_factors = prime_factors * count
    end
    prime_factors
  end

  private

  def self.factors(num)
    (2..num).select{ |n| num % n == 0 }
  end

  def self.prime?(num)
    return false if num < 2

    (2...num).map do |i|
      return false if num % i == 0
    end
    true
  end
end
