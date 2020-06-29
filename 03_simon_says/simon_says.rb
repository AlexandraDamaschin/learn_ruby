def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, repeated_number_of_times = 2)
  ([word] * repeated_number_of_times).join(' ')
end

def start_of_word(word, letter_number)
  word[0...letter_number]
end

def first_word(word)
  word.split(' ').first
end

def titleize(word)
  words = word.split.map do |word|
    if %w[the and over].include?(word)
      word
    else
      word.capitalize
    end
  end
  words.first.capitalize!
  words.join(' ')
end