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
    number == 1 ? 'bottle' : 'bottles'
  end

  def next
    (number - 1).to_bottle_number
  end

  def pronoun
    number == 1 ? 'it' : 'one'
  end

  def get_beer
    "Take #{pronoun} down and pass it around"
  end

end
