def translate(string)
  # Set up variables
  words = string.split
  translated_words = []
  vowels = ["a", "e", "i", "o", "u"]
  consonants = ["sch", "squ", "qu", "thr", "ch", "th", "br"] # Cover edge cases
  ("a".."z").each { |letter| consonants << letter unless vowels.include? letter }

  if words.length == 1
    # If we're dealing with one word, turn it into a string
    word = words.join
    if vowels.include? word[0]
      word = word + "ay"
    else
      start = consonants.select { |consonant| word.start_with? consonant }
      start = start[0]
      word.slice!(0, start.length)
      word = word + start + "ay"
    end
    return word
  else
    # Otherwise, process it as an array before joining
    words.each do |word|
      if vowels.include? word[0]
        word = word + "ay"
        translated_words << word
      else
        start = consonants.select { |consonant| word.start_with? consonant }
        start = start[0]
        word.slice!(0, start.length)
        word = word + start + "ay"
        translated_words << word
      end
    end
    return translated_words.join(' ')
  end
end
