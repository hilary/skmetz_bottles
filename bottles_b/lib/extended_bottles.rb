require_relative 'bottle_number'
require_relative 'bottle_number_6'

class ExtendedBottles

  def song
    verses(99, 0)
  end

  def verses(upper_bound, lower_bound)
    upper_bound.downto(lower_bound).map { |i| verse(i) }.join("\n")
  end

  def verse(number)
    bottle_number = number.to_bottle_number

    "#{bottle_number} of beer on the wall, ".capitalize +
      "#{bottle_number} of beer.\n" +
      "#{bottle_number.get_beer}, " + 
      "#{bottle_number.next} of beer on the wall.\n"
  end

end

