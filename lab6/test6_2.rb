require './lab6_2.rb'
require 'minitest/autorun'
# Class for testing
class TestProg < MiniTest::Unit::TestCase
  def test_1
    eps1 = 10**-2
    real = 0.009998000399920015
    assert_in_delta(real, func(eps1)[0], eps1)
  end

  def test_2
    eps2 = 10**-4
    real = 0.0000099999998
    assert_in_delta(real, func(eps2)[0], eps2)
  end
end
