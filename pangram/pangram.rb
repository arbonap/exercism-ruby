class Pangram
  ALPHABETO = ("a".."z").to_a
  def self.is_pangram? frase
    frase.gsub(/[^a-z]/i, "").downcase.chars.sort.uniq == ALPHABETO
  end
end
module BookKeeping
  VERSION = 2
end
