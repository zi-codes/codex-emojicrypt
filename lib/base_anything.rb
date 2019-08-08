class Base

  def initialize(symbol_set)
    @symbol_set = symbol_set
    @base = @symbol_set.length
  end

  def encrypt(number)
    return "0" if number == 0

    original_number = number
    answer_array = []

    while number > 0
      power = find_highest_power(number)
      units = how_many_units(power:power,number:number)
      answer_array << [units, power]
      number = reduce(power: power, number: number)
    end

    p "the answer array is #{answer_array}"

    prettify(answer_array)
  end

  def prettify(answer_array)
    digits_array = []
    next_power = 1

    until answer_array.length == 0
      if answer_array[-1][1] == next_power
        power_and_digit = answer_array.pop
        digits_array << power_and_digit[0]
      else
        digits_array << 0
      end
      next_power = next_power * @base
    end

    get_symbols(digits_array.reverse)

  end

  def get_symbols(array)
    array.map { |digit|
      get_symbol(digit)
    }.join
  end

  def get_symbol(digit)
    @symbol_set[digit]
  end

  def reduce(power:, number:)
    units = how_many_units(power: power, number: number)
    number = number - power * units
    return number
  end

  def find_highest_power(number)
    base = @base
    while number - base >= 0 do
      base = base * @base
    end

    base/@base
  end

  def how_many_units(power:, number:)
    number/power
  end

  def decrypt(hash)
  end

end
