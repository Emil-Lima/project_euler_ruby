# frozen_string_literal: true

def smallest_multiple(num)
  final = 0
  base = num
  while final.zero?
    comparison = num
    while (base % comparison).zero?
      if comparison == 1
        final = base
        break
      end
      comparison -= 1
    end
    base += num # because the number that we are searching for has to be a multiple of 20
    break unless final.zero?
  end
  final
end
