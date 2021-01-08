# frozen_string_literal: true

def even_fibonacci_sum(num)
  num1 = 0
  num2 = 1
  holder = 0
  sum = 0
  while holder < num
    holder = num2
    num2 += num1
    num1 = holder
    sum += holder if holder.even?
  end
  sum
end
