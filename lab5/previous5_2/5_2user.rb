require './5_2.rb'
puts 'Input string'
source = gets.chomp
words = source.split(' ')
puts "Shortest word: #{words.sh(words)}"
puts "Longest word: #{words.lo(words)}"
swap = words.swap(words.index(words.sh(words)), words.index(words.lo(words)))
puts "String after changes: #{swap}"
