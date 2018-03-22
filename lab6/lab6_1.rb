def func(eps)
  n = 1.0
  y = (n / (n**2 + 2))
  while y >= eps
    n += 1
    y = (n / (n**2 + 2))
  end
  [y, n.to_i]
end
