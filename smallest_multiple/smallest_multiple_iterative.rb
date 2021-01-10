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
    base += 20 # because the number that we are searching for has to be a multiple of 20
    break unless final.zero?
  end
  final
end
