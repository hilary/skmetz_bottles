gem 'minitest', '~> 5.3'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/bottle_number'

class BottleNumberTest < Minitest::Test

  def test_name
    assert_equal '99', BottleNumber.new(99).name
  end

  def test_next
    assert_equal '23', BottleNumber.new(24).next.name
  end

  def test_container
    assert_equal 'bottles', BottleNumber.new(10).container
  end

  def test_pronoun
    assert_equal 'one', BottleNumber.new(10).pronoun
  end

  def test_get_beer
    assert_equal "Take one down and pass it around", BottleNumber.new(88).get_beer
  end

end

class BottleNumber0Test < Minitest::Test

  attr_reader :bottle_number_0
  def setup
    @bottle_number_0 = ::BottleNumber0.new(0)
  end

  def test_name
    assert_equal 'no more', bottle_number_0.name
  end

  def test_next
    assert_equal '99', bottle_number_0.next.name
  end

  def test_get_beer
    assert_equal "Go to the store and buy some more", bottle_number_0.get_beer
  end

end

class BottleNumber1Test < Minitest::Test

  attr_reader :bottle_number_1
  def setup
    @bottle_number_1 = ::BottleNumber1.new(1)
  end

  def test_container
    assert_equal 'bottle', bottle_number_1.container
  end

  def test_pronoun
    assert_equal 'it', bottle_number_1.pronoun
  end

  def test_get_beer
    assert_equal "Take it down and pass it around", bottle_number_1.get_beer
  end

end
