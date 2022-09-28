# frozen_string_literal: true

# BEGIN
def get_same_parity(numbers)
  numbers.filter { |item| item.even? == numbers[0].even? }
end
# END
