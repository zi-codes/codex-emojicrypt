class Base

  def initialize(symbol_set)
    @symbol_set = symbol_set
    @base = @symbol_set.length
  end

  def encrypt(number)
    p "==============="
    p "NOW ENCRYPTING #{number}"
    answer_array = []

    power = find_highest_power(number)

    while number >= @base
      answer_array << get_symbol(power,number)
      p "the power is #{power} and the number is #{number}"
      number = reduce(power,number)
      power = power/@base
      p "now going to the next power down, the new power is #{power}"
    end


    answer_array << @symbol_set[number]

    answer_array.join

  end

  def reduce(power, number)
    units = how_many_units(power: power, number: number)
    number = number - power * units
    p "now reducing the number, the new number is #{number}"
    return number
  end

  def get_symbol(power, number)
    units = how_many_units(power: power, number: number)

    p "now getting the symbol, the units I am using is #{units}"
    p "now getting the symbol, the symbol I got is #{@symbol_set[units]} "
    @symbol_set[units]
  end

  ## I am sure there is a better way of doing this
  def find_highest_power(number)
    base = @base
    while number - base > 0 do
      base = base * @base
    end
    p "the highest power is #{base/@base}"
    base/@base
  end

  def how_many_units(power:, number:)
    number/power
  end

  def decrypt(hash)
  end

end
