#require 'pry-byebug'

def substrings(sentence, dictionary)
  dictionary.reduce(Hash.new(0)) do |result, dictionary_word|
    #binding.pry
    sentence.split(' ').each do |sentence_word|
      if sentence_word.upcase.include?(dictionary_word.upcase)
        result[dictionary_word] += 1
      end
    end
    result
  end
end

#Test

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
