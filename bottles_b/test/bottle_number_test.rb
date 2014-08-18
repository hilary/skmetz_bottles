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

  def test_container_at_1
    assert_equal 'bottle', BottleNumber.new(1).container
  end

  def test_pronoun
    assert_equal 'one', BottleNumber.new(10).pronoun
  end

  def test_pronoun_at_1
    assert_equal 'it', BottleNumber.new(1).pronoun
  end

  def test_get_beer_88
    assert_equal "Take one down and pass it around", BottleNumber.new(88).get_beer
  end

  def test_get_beer_1
    assert_equal "Take it down and pass it around", BottleNumber.new(1).get_beer
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
