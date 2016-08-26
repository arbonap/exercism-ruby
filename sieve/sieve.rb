# # def test_find_primes_up_to_10
# #   expected = [2, 3, 5, 7]
# #   assert_equal expected, Sieve.new(10).primes
# # end
# class Sieve
#
#   def initialize(num)
#     @num = num
#   end
#
#   def primes n
#     if n<= 1
#       false
#     elsif n == 2
#       true
#     else
#     [(2..n)].each do
#       |i| prime?(i)
#      end
#    end
#   end
#
#   def prime? (num)
#     if n<= 1
#       false
#     elsif n == 2
#       true
#     else
#       (2..n/2).none? { |i| n % i == 0}
#     end
#   end
# end

class Sieve

  def initialize num
    @num = num
  end

  def primes
    (2..@num).reject do |n|
      (1..n).reject { |divisor|
                      n % divisor != 0
                    }.size > 2
                  end
  end
end
