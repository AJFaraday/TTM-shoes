module Character

  TRANSPOSE = 10
  NUMBERS = [50, 53, 56, 59, 62, 65, 68, 71, 74, 77]
  PUNCTUATION =         ['.',',',"'",'!','?','(',')','[',']','{','}',  '#','=','_','<','>','"','-','+','/', '\\']
  PUNCTUATION_NUMBERS = [46, 44, 39, 33, 63, 40, 41, 91, 93, 123, 125, 35, 61, 95, 60, 62, 34, 45, 43, 47, 92]

    #
  # handles input of strings and numbers, converts the first character of a string to it's ascii number
  #
  def self.get_number(character)
    if character.is_a?(Integer)
      character
    elsif character.is_a?(String)
      character.bytes.first
    else
      raise WrongInput
    end
  end

    #
  # Converts a character (or rather, the first character of a string) and converts it into commands for the pure data patch.
  # See above for examples
  #
  def self.command(character, transpose)
    transpose ||= TRANSPOSE
    pre = 'letter'
    number = get_number(character)
    case number
      # Upper case
      when 65..90
        comm = number + transpose
      # Lower case
      when 97..122
        comm = (number-47) + transpose
      # space
      when 32
        comm = 0
      when 48..57
        pre = 'num'
        comm = NUMBERS[character.to_i] + transpose
    end
    # punctuation
    if PUNCTUATION_NUMBERS.include? number
      pre = 'punct'
      comm = PUNCTUATION.index(character)
    end
    return "#{pre} #{comm} ;"
  end

end
