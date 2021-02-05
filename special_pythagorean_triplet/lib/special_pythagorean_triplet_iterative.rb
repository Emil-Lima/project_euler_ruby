# frozen_string_literal: true

def special_pythagorean_triplet(num)
  a = 1.0
  while a < num / 3
    b = a + 1
    while b < num / 2
      c = (a**2 + b**2)**0.5
      break if (c % 1).zero? && (a + b + c == num)

      b += 1
    end
    break if a + b + c == num

    a += 1
  end
  return "a is #{a.to_i}, b is #{b.to_i} and c is #{c.to_i}." if a**2 + b**2 == c**2
end
