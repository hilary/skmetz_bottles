class Bottles

  def song
    verses(99, 0)
  end

  def verses(upper_bound, lower_bound)
    upper_bound.downto(lower_bound).map { |i| verse(i) }.join("\n")
  end

  def verse(number)
    case number
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "#{number} #{container(number)} of beer on the wall, #{number} #{container(number)} of beer.\nTake #{pronoun(number)} down and pass it around, #{name(number - 1)} #{container(number - 1)} of beer on the wall.\n"
    end
  end

  private

    def container(bottle_number)
      (bottle_number == 1) ? "bottle" : "bottles"
    end

    def pronoun(bottle_number)
      bottle_number == 1 ? "it" : "one"
    end

    def name(bottle_number)
      bottle_number == 0 ? "no more" : bottle_number
    end

end
