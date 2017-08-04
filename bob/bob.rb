class Bob

  def self.hey txt
    return 'Whoa, chill out!' if all_upcase?(txt) unless all_nums?(txt)
    return "Sure." if txt.chars.last == "?"
    "Whatever."
  end

  private
  def self.all_upcase? txt
    txt == txt.upcase
  end

  def self.all_nums? txt
    txt.split.all? {|i| i.to_i != 0 }
  end
end
