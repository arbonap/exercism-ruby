class Binary

  def self.to_decimal num
    raise ArgumentError unless num_is_valid?(num)
    num.to_i(2)
  end

  private

  def self.num_is_valid? num
    num.to_s.each_char.all? do |char|
      char == '0' || char == '1'
     end
  end

end

module BookKeeping
  VERSION = 3
end
