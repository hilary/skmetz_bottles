class Bottles

  def verse(count)
    <<VERSE
#{count} bottles of beer on the wall, #{count} bottles of beer.
Take one down and pass it around, #{count - 1} bottles of beer on the wall.
VERSE
  end

end
