# frozen_string_literal: true

def sum_of_primes(num)
  final = 0
  while num > 1
    base = num / 2
    while base.positive?
      if base == 1
        final += num
        break
      elsif (num % base).zero?
        break
      end
      base -= 1
    end
    num -= 1
  end
  final
end
