require_relative 'bottle_number'

class Bottles

  def song
    verses(99, 0)
  end

  def verses(upper_bound, lower_bound)
    upper_bound.downto(lower_bound).map { |i| verse(i) }.join("\n")
  end

  def verse(number)
    current_bn = BottleNumber.new(number)

    "#{current_bn.full_name.capitalize} of beer on the wall, " +
      "#{current_bn.full_name} of beer.\n" +
      "#{current_bn.get_beer}, " + 
      "#{current_bn.next.full_name} of beer on the wall.\n"
  end

end
