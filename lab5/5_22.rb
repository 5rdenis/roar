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

  def swap(words)
    arr = words.sort_by(&:length)
    sh = arr[0]
    lo = arr[-1]
    in1 = words.index(words.sh(words))
    in2 = words.index(words.lo(words))
    words[in1], words[in2] = words[in2], words[in1]
    words
  end
end
