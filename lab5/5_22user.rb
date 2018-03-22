require './5_22.rb'
puts 'Input string'
source = gets.chomp
words = source.split(' ')
puts "Shortest word: #{words.sh(words)}"
puts "Longest word: #{words.lo(words)}"
swap = words.swap(words)
puts "String after changes: #{swap}"
