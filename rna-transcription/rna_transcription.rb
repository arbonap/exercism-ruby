class Complement
  CONVERSION = {
    'C' => 'G',
    'G' => 'C',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(strand)
    complement = strand.chars.map{|base| CONVERSION[base]}.join('')
    strand.length == complement.length ? complement : ''
  end

end

module BookKeeping
  VERSION = 4
end