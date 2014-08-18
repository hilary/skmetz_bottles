gem 'minitest', '~> 5.3'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/extended_bottles'

class ExtendedBottlesTest < Minitest::Test

  attr_reader :extended_bottles
  def setup
    @extended_bottles = ::ExtendedBottles.new
  end

  def test_the_seventh_verse
    expected = <<-VERSE
7 bottles of beer on the wall, 7 bottles of beer.
Take one down and pass it around, 1 six-pack of beer on the wall.
VERSE
    assert_equal expected, extended_bottles.verse(7)
  end

  def test_the_sixth_verse
    expected = <<-VERSE
1 six-pack of beer on the wall, 1 six-pack of beer.
Take one down and pass it around, 5 bottles of beer on the wall.
VERSE
    assert_equal expected, extended_bottles.verse(6)
  end

  def test_the_whole_song
    assert_equal extended_bottles.verses(99, 0), extended_bottles.song
  end
end

