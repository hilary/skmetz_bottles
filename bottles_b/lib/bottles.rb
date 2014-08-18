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
    next_bn    = BottleNumber.new(number).next

    "#{current_bn.name.capitalize} #{current_bn.container} of beer on the wall, " +
      "#{current_bn.name} #{current_bn.container} of beer.\n" +
      "#{current_bn.get_beer}, " + 
      "#{next_bn.name} #{next_bn.container} of beer on the wall.\n"
  end

end
