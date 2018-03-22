require './5_22.rb'
require 'minitest/autorun'
# Testing class
class TestProg < MiniTest::Unit::TestCase
  def test_1
    answer = 'im yes sure totally'
    x = 'totally yes sure im'
    x = x.split(' ')
    x = x.swap(x)
    x = x.join(' ')
    assert_equal(answer, x)
  end
end
