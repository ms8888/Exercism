class Complement
  def self.of_dna(strand)
    if strand.chars.any? {|rna| !@change_rna[rna]}
      ''
    else
      splitStrand = strand.split('')
      splitStrand.map do |translations|
        complements_hash[translations]
      end.join('')
    end
  end
  
  def self.complements_hash
    {
      "G" => "C", "C" => "G",
      "T" => "A", "A" => "U"
    }
  end
  
  @change_rna = complements_hash
  
end
