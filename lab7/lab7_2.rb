# parent class
class Word
  attr_reader :word
  def initialize(str)
    @word = str.delete("\n")
  end

  def print
    puts "Word: #{@word}"
  end

  def length
    @word.length
  end
end

# inheritor
class WordAndLength < Word
  attr_reader :length
  def initialize(str)
    super(str)
     @length = @word.length
  end

  def print
    super
    puts "Length: #{@length}"
  end

  def number_of_consonants
    @word.scan(/[qwrtpsdfghjklzxcvbnmQWRTPSDFGHJKLZXCVBNM]/).count
  end
end
