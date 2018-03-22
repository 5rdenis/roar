def random_string
  Array.new(rand(9) + 1) do |_|
    ('a'...'z').to_a.shuffle[0, rand(5) + 3].join
  end.join(' ')
end

def gen_file(n)
  ffile = './ffile.txt'
  File.open(ffile, 'w') { |f| n.times { f.puts random_string } }
end

def put_file(file_path)
  puts "File #{file_path}:"
  puts File.read file_path
  puts
end

def gen_file_reverse
  ffile = './ffile.txt'
  gfile = './gfile.txt'
  File.open(gfile, 'w') do |g|
    File.readlines(ffile).each { |line| g.puts line.reverse! }
  end
end
