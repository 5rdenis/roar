require './lab7_2.rb'
puts 'Input first word: '
slovo1 = Word.new(gets.to_s)
puts
puts 'First class info: '
slovo1.print
puts
puts 'Input second word: '
slovo2 = WordAndLength.new(gets.to_s)
puts
puts 'Second class info: '
slovo2.print
puts "Number of consonants: #{slovo2.number_of_consonants}"
puts
puts "Length of first word is #{slovo1.length}"
puts "Length of second word is #{slovo2.length}"
