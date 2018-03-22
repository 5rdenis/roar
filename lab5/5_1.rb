def func(x)
  if x > 1
    Math.exp(x) * Math.log10((x**2) / (x - 2))
  elsif x.zero?
    Math.exp(x) * Math.log10((x**2) / (x - 2))
  else
    'Invalid expression'
  end
end
