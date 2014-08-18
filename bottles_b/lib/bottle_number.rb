class BottleNumber

  attr_reader :number

  def initialize(number)
    @number = number
  end

  def to_s
    "#{name} #{container}"
  end

  def name
    number.to_s
  end

  def container
    'bottles'
  end

  def next
    (number - 1).to_bottle_number
  end

  def pronoun
    'one'
  end

  def get_beer
    "Take #{pronoun} down and pass it around"
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

class BottleNumber1 < BottleNumber

  def container
    'bottle'
  end

  def pronoun
    'it'
  end

end
