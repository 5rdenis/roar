require './lab6_3.rb'
require 'minitest/autorun'
# class
class TestF < Minitest::Test
  def test_1
    dif = lambda do |x|
      (Math.sin(x) / x - Math.tan(x + 1) / (x + 1)).abs
    end

    puts "#{maxim(&dif)} using lambda"
    assert_in_delta(maxim(&dif), 798.9, 0.1)
  end

  def test_2
    puts "#{maxim { |x| (Math.sin(x) / x - Math.tan(x + 1) / (x + 1)).abs }} using block"
    assert_in_delta(maxim { |x| (Math.sin(x) / x - Math.tan(x + 1) / (x + 1)).abs }, 798.9, 0.1)
  end
end