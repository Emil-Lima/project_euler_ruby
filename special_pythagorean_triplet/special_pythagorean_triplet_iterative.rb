# frozen_string_literal: true

def special_pythagorean_triplet
  a = 1.0
  while a < 1000 / 3
    b = a + 1
    while b < 1000 / 2
      c = (a**2 + b**2)**0.5
      break if (c % 1).zero? && (a + b + c == 1000)

      b += 1
    end
    break if a + b + c == 1000

    a += 1
  end
  "a is #{a.to_i}, b is #{b.to_i} and c is #{c.to_i}."
end
