require './lab7_2.rb'
require 'minitest/autorun'
# Testing class
class TestProg < MiniTest::Unit::TestCase
  def setup
    @str1 = ('a'...'z').to_a.shuffle[0, rand(5) + 3].join
    @str2 = ('a'...'z').to_a.shuffle[0, rand(5) + 3].join
    @slovo1 = Word.new(@str1)
    @slovo2 = WordAndLength.new(@str2)
  end

  def test_1
    assert_equal(@slovo1.word, @str1)
  end

  def test_2
    assert_equal(@slovo1.length, @str1.length)
  end

  def test_3
    assert_equal(@slovo2.number_of_consonants, @str2.scan(/[qwrtpsdfghjklzxcvbnmQWRTPSDFGHJKLZXCVBNM]/).count)
  end

  def test_4
    assert_equal(@slovo1.class, @slovo2.class.superclass)
  end

  def test_5
    assert_equal(@slovo2.length, @str2.length)
  end
end
