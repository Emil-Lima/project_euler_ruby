# frozen_string_literal: true

def fibonacci_numbers(num)
  if num < 2
    num
  else
    fibonacci_numbers(num - 2) + fibonacci_numbers(num - 1)
  end
end

def sum_of_even(n)
  sum = 0
  (1..n).each do |s|
    sum += 1 if fibonacci_numbers(s).even?
  end
  sum
end

puts fibonacci_numbers(3)
