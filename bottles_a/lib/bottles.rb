class Bottles

  def verse(count)
    
    <<VERSE
#{unit(count)} of beer on the wall, #{unit(count)} of beer.
Take one down and pass it around, #{unit(count - 1)} of beer on the wall.
VERSE
  end

  private

    def unit(count)
      count > 1 ? "#{count} bottles" : "#{count} bottle"
    end

end
