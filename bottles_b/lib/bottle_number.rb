class BottleNumber

  attr_reader :number

  def initialize(number)
    @number = number
  end

  def full_name
    "#{name} #{container}"
  end

  def name
    number == 0 ? 'no more' : number.to_s
  end

  def container
    number == 1 ? 'bottle' : 'bottles'
  end

  def next
    number == 0 ? BottleNumber.new(99) : BottleNumber.new(number - 1)
  end

  def pronoun
    number == 1 ? 'it' : 'one'
  end

  def get_beer
    number == 0 ? "Go to the store and buy some more" : "Take #{pronoun} down and pass it around"
  end

end
