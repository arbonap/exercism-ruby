class Bob

  def self.hey txt
    return "Sure." if non_letters_with_question?(txt)
    return 'Whoa, chill out!' if all_upcase?(txt) unless all_nums?(txt)
    return "Sure." if txt.chars.last == "?"
    return "Fine. Be that way!" if blank?(txt)
    "Whatever."
  end

  private

  def self.blank? txt
    txt.strip&.empty?
  end

  def self.non_letters_with_question? txt
    txt.split(/\W+/).length == 0  && txt.chars.last == "?"
  end

  def self.all_upcase? txt
    txt == txt.upcase
  end

  def self.all_nums? txt
    txt.split.all? {|i| i.to_i != 0 }
  end
end
