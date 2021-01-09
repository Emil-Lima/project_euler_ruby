# frozen_string_literal: true

def largest_palindrome_product
  num = 998_901 # because 999 * 999 = 998901
  result = 0
  while num > 100_001
    first_half = num.to_s.slice(0, 3)
    second_half_reversed = num.to_s.slice(3, 6).reverse
    if first_half == second_half_reversed
      first_el = 999
      while first_el > 99
        second_el = 999
        while second_el > 99
          if first_el * second_el == num
            result = num
            break
          end
          second_el -= 1
        end
        break unless result.zero?

        first_el -= 1
      end
    end
    break unless result.zero?

    num -= 1
  end
  result
end

puts largest_palindrome_product
