# frozen_string_literal: true

# BEGIN
def anagramm_filter(text, words)
  letters = text.chars.sort.join

  words.filter { |word| word.chars.sort.join == letters }
end
# END
