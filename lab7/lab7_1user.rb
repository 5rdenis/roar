require './lab7_1.rb'
gen_file 1
puts 'File F generated'
system 'open ./ffile.txt'
gen_file_reverse
puts 'File G generated'
system 'open ./gfile.txt'
