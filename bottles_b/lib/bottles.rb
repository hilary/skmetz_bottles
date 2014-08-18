require_relative 'bottle_number'

class Bottles

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

class Fixnum
  def to_bottle_number
    begin
      Object.const_get("BottleNumber#{self}")
    rescue NameError
      BottleNumber
    end.new(self) # as in BottleNumber.new(self)
  end
end

class BottleNumber0 < BottleNumber

  def name
    'no more'
  end

  def next
    99.to_bottle_number
  end

  def get_beer
    "Go to the store and buy some more"
  end

end

