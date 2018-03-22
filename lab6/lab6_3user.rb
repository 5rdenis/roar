require './lab6_3.rb'
lam = ->(x) { (Math.sin(x) / x - Math.tan(x + 1) / (x + 1)).abs }
puts 'Result called with lambda: '
puts maxim(&lam)
puts 'Result called with block: '
puts maxim { |x| (Math.sin(x) / x - Math.tan(x + 1) / (x + 1)).abs }
