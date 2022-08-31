# frozen_string_literal: true

# BEGIN
def fibonacci(num)
  if num < 0
    nil
  elsif num == 0
    0
  elsif num == 1
    1
  else
    fibonacci(num - 1) + fibonacci(num - 2)
  end
end
# END
