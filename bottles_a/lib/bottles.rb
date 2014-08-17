class Bottles

  def song
    verses(99, 0)
  end

  def verses(start, stop)
    start.downto(stop).
      inject('') { |song, count| song + verse(count) + "\n" }.
      chomp("\n")
  end

  def verse(count)
    <<VERSE
#{beer(count).capitalize}, #{beer(count, wall = false)}.
#{get_beer(count)}, #{beer(count - 1)}.
VERSE
  end

  private

    def beer(count, wall = true)
      bottle = case count
        when  1  then "#{count} bottle"
        when  0  then "no more bottles"
        when -1  then "99 bottles"
        else        "#{count} bottles"
      end + ' of beer'
      bottle += ' on the wall' if wall
      bottle
    end

    def get_beer(count)
      case count
        when 1 then 'Take it down and pass it around'
        when 0 then 'Go to the store and buy some more'
        else        'Take one down and pass it around'
      end
    end

end
