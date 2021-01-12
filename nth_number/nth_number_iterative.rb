# frozen_string_literal: true

def nth_number(num)
  prime_numbers = []
  base = 1
  while prime_numbers.length < num
    top = base - 1
    if base.to_s.length == 1 || base.to_s[-1].to_i.odd? && base.to_s[-1].to_i != 5
      while top.positive?
        if top == 1
          prime_numbers.push(base)
        elsif (base % top).zero?
          break
        end
        top -= 1
      end
    end
    base += 1
  end
  prime_numbers.last
end
