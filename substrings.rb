#require 'pry-byebug'

def substrings(word, dictionary)
  dictionary.reduce(Hash.new(0)) do |result, dictionary_word|
    #binding.pry
    #if dictionary_word.include?(word)
    if word.include?(dictionary_word)
      result[dictionary_word] += 1
    end
    result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings('going', dictionary)
