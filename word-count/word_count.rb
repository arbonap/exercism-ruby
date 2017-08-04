class Phrase
  attr_reader :txt

  def initialize txt
    @txt = txt.to_s.downcase.split(/[^'\w]+/)
  end
  # this is a more imperative way:
  # def word_count  
  #   count = {}
  #   txt.map do |word|
  #     if count.has_key? word
  #       word += 1
  #     else
  #       count[word] = 1
  #     end
  #   end
  #   count
  # end

# Enum#each_with_object is great for frequency hashes
  def word_count
    txt.each_with_object(Hash.new(0)) do |word, hash|
      hash[word] += 1
    end
  end
end

module BookKeeping
  VERSION = 1
end
