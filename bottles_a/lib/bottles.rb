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
    current = send("beer_#{count}".to_sym)
    <<VERSE
#{current.capitalize} #{decorate_beer}, #{current} #{decorate_beer(false)}.
#{get_beer(count)}, #{send("beer_#{count - 1}".to_sym)} #{decorate_beer}.
VERSE
  end

  private

    def beer_1
      "1 bottle"
    end

    def beer_0
      "no more bottles"
    end

    def beer_neg1
      "99 bottles"
    end

    def method_missing(method_name, *args)
      if neg_count = method_name.to_s.match(/^beer_-(\d+)$/)
        send("beer_neg#{neg_count[1]}")
      elsif count = method_name.to_s.match(/^beer_(\d+)/)
        "#{count[1]} bottles"
      else
        super
      end
    end

    def decorate_beer(wall = true)
      'of beer' + (wall ? ' on the wall' : '')
    end

    def get_beer(count)
      case count
        when 1 then 'Take it down and pass it around'
        when 0 then 'Go to the store and buy some more'
        else        'Take one down and pass it around'
      end
    end

end

class ExtendedBottles < Bottles

  def beer_6
    "1 six-pack"
  end

end
