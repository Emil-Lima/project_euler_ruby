def multiples(num)
  holder = 0
  sum = 0
  while holder < num
    if holder % 5 == 0 || holder % 3 == 0
      sum += holder
    end
    holder += 1
  end
  sum
end
