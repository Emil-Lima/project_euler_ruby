def highly_div_tri_num(num_divisors)
  sum_of_natural = 0
  tri_num = 0
    loop do
      tri_num += 1
      sum_of_natural = sum_getter(tri_num)
      divisors = divisor_getter(sum_of_natural)
      break if divisors.length >= num_divisors
    end
  sum_of_natural
end

def sum_getter(tri_num)
  sum_natural_num = (0..tri_num).sum
end

def divisor_getter(num)
  base_num = 1
  arr_of_divisors = []
  while base_num < num
    arr_of_divisors.push(base_num) if num % base_num == 0
    base_num += 1
  end
  arr_of_divisors.push(1) if arr_of_divisors.empty?
  arr_of_divisors
end
