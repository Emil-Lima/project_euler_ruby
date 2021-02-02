# frozen_string_literal: true

def multiples(num-1)
  if num == 3
    num
  elsif (num % 3).zero? || (num % 5).zero?
    num + multiples(num - 1)
  else
    multiples(num - 1)
  end
end
