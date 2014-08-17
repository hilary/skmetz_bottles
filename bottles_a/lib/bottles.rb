class Bottles

  def verse(count)
    <<VERSE
#{unit(count).capitalize} of beer on the wall, #{unit(count)} of beer.
Take #{pronoun(count)} down and pass it around, #{unit(count - 1)} of beer on the wall.
VERSE
  end

  private

    def unit(count)
      case count
        when 1  then "#{count} bottle"
        when 0  then "no more bottles"
        else        "#{count} bottles"
      end
    end

    def pronoun(count)
      count == 1 ? 'it' : 'one'
    end

end
