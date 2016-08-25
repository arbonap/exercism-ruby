class Pangram
  def self.is_pangram? frase
    alphabeto = ("a".."z").to_a
    frase.downcase.chars.each do |char|
      alphabeto.delete(char)
    end
    alphabeto.empty?
  end
end
module BookKeeping
  VERSION = 2
end
