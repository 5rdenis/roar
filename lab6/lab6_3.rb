def maxim
  max = 0
  0.5.step(1, 0.01) do |x|
    max = yield(x) if yield(x) > max
  end
  max
end
