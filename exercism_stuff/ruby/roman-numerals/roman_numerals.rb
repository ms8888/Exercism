class Integer
  NUMS_TO_ROMAN = { 
  1 => 'I'    ,4 => 'IV'   ,5 => 'V',
  9 => 'IX'   ,10=> 'X'    ,40 => 'XL',
  50 => 'L'   ,90=> 'XC'   ,100=> 'C',
  400=> 'CD'  ,500 => 'L'  ,900 => 'CM',
  1000 => 'M'

}

  def to_roman
    number = self
    roman_number = ''
    NUMS_TO_ROMAN.each do |numericalKey , romanValue|
      while number >= numericalKey
        number = number - numericalKey
        roman_number << romanValue
      end
    end
    roman_number
  end
end
