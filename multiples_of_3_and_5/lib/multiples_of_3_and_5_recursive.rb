# frozen_string_literal: true

def multiples(num)
  if num <= 0
    0
  elsif num == 3
    num
  elsif (num % 3).zero? || (num % 5).zero?
    num + multiples(num - 1)
  else
    multiples(num - 1)
  end
end

# We want to get the multiples of 3 and 5 that are smaller than the given number, so that we use this helper method.
def smaller_than_num(num)
  num -= 1
  multiples(num)
end
