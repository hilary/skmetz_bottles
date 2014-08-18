class Bottles

  def song
    verses(99, 0)
  end

  def verses(upper_bound, lower_bound)
    upper_bound.downto(lower_bound).map { |i| verse(i) }.join("\n")
  end

  def verse(number)
    current_bn = number
    next_bn    = next_bottle_number(number)

    "#{name(current_bn).capitalize} #{container(current_bn)} of beer on the wall, " +
      "#{name(current_bn)} #{container(current_bn)} of beer.\n" +
      "#{get_beer(current_bn)}, " + 
      "#{name(next_bn)} #{container(next_bn)} of beer on the wall.\n"
  end

  private

    def container(bottle_number)
      (bottle_number == 1) ? "bottle" : "bottles"
    end

    def get_beer(bottle_number)
      if bottle_number == 0
        "Go to the store and buy some more"
      else
        "Take #{pronoun(bottle_number)} down and pass it around"
      end
    end

    def pronoun(bottle_number)
      bottle_number == 1 ? "it" : "one"
    end

    def name(bottle_number)
      bottle_number == 0 ? 'no more' : bottle_number.to_s
    end

    def next_bottle_number(bottle_number)
      bottle_number == 0 ? 99 : bottle_number - 1
    end

end
