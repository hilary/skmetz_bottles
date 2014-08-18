gem 'minitest', '~> 5.3'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/bottle_number_6'

class BottleNumber6Test < Minitest::Test

  attr_reader :bottle_number_6
  def setup
    @bottle_number_6 = ::BottleNumber6.new(6)
  end

  def test_name
    assert_equal '1', bottle_number_6.name
  end

  def test_container
    assert_equal 'six-pack', bottle_number_6.container
  end

end
