class Complement
  def self.of_dna(strand)
    if strand.chars.any? {|rna| !@complements_hash[rna]}
      ''
    else
      strand.split('').map do |translations|
        @complements_hash[translations]
      end.join('')
    end
  end
  
  @complements_hash =
    {
      "G" => "C", "C" => "G",
      "T" => "A", "A" => "U"
    }
  
end

module BookKeeping
  VERSION = 4
end