def echo(str)
  return str
end

def shout(str)
  return str.upcase
end

def start_of_word(word, num)
  return word.slice(0..num-1)
end

def repeat(word, times=0)
  if times == 0
    return "#{word} #{word}"
  else
    return ("#{word} " * times).strip
  end
end

def first_word(sentence)
  words = sentence.split
  return words[0]
end

def titleize(title)
  little_words = ["a", "an", "the", "and", "or", "over", "in", "out", "into"]
  words = title.split
  words[0].capitalize!
  words.map { |word| word.capitalize! unless (little_words.include? word) }
  title = words.join(' ')
  return title
end
