require './5_1.rb'
require 'minitest/autorun'
# Testing class
class TestProg < MiniTest::Unit::TestCase
  def test_1
    x = 3
    assert_in_delta(19.16647, func(x), 1e-5)
  end

  def test_2
    x = -1
    assert_equal('Invalid expression', func(x))
  end

  def test_3
    x = -2
    assert_equal('Invalid expression', func(x))
  end
end
