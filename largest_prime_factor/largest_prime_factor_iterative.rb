# frozen_string_literal: true

def largest_prime_factor(num)
  holder = num - 1
  searched_number = 0
  while holder > 1
    if (num % holder).zero?
      second_holder = holder - 1
      while second_holder.positive?
        if second_holder == 1
          searched_number = holder
          break
        elsif (holder % second_holder).zero?
          break
        end
        second_holder -= 1
      end
    end
    break if searched_number != 0

    holder -= 1
  end
  searched_number
end

puts largest_prime_factor(172)
