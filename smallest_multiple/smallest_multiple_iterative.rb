# frozen_string_literal: true

def smallest_multiple
  final = 0
  base = 20
  while final.zero?
    comparison = 20
    while (base % comparison).zero?
      if comparison == 1
        final = base
        break
      end
      comparison -= 1
    end
    base += 10 # because the last digit of the number we are looking for has to be 0 and we start with number 20
    break unless final.zero?
  end
  final
end
