# frozen_string_literal: true

# BEGIN
def fizz_buzz(start, finish)
  return nil if start > finish

  result = ''
  i = start
  while i <= finish
    fizz = fizz?(i) ? 'Fizz' : ''
    buzz = buzz?(i) ? 'Buzz' : ''
    result += if fizz?(i) || buzz?(i)
                "#{fizz}#{buzz} "
              else
                "#{i} "
              end
    i += 1
  end
  result.strip
end

def fizz?(num)
  (num % 3).zero?
end

def buzz?(num)
  (num % 5).zero?
end
# END
