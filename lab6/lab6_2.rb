def func(eps)
  n = 1.0
  list = Enumerator.new do |yielder|
    y = (n / (n**2 + 2))
    loop do
      yielder.yield y, n
      n += 1
      y = (n / (n**2 + 2))
    end
  end
  list.find { |y, _n| y <= eps }
end
