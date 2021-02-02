# frozen_string_literal: true

def multiples(num)
  holder = 0
  sum = 0
  while holder < num
    sum += holder if (holder % 5).zero? || (holder % 3).zero?
    holder += 1
  end
  sum
end
