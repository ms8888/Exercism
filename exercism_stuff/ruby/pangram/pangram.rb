class Pangram
  def self.pangram?(phrase)
    alphabet = ('a'..'z').to_a
    # phrase = phrase.delete(' ' '_' '0-9')
    phrase = phrase.delete('^a-zA-Z').downcase
    phrase = phrase.split('')
    phrase = phrase.sort.uniq
    alphabet == phrase 
  end
end
