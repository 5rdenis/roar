# fg
class Array
  def lo(words)
    arr = words.sort_by(&:length).reverse
    arr[0]
  end

  def sh(words)
    array = words.sort_by(&:length)
    array[0]
  end

  def swap(a, b)
    self[a], self[b] = self[b], self[a]
    self
  end
end
