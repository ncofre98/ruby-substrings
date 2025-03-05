#require 'pry-byebug'

def substrings(sentence, dictionary)
  dictionary.reduce(Hash.new(0)) do |result, dictionary_word|
    #binding.pry
    #if dictionary_word.include?(word)
    if sentence.upcase.include?(dictionary_word.upcase)
      result[dictionary_word] += 1
    end
    result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
