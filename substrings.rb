dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (sentence, dictionnary)
  result = Hash.new()

  sentence.scan(/[a-zA-Z]+/) { |word|
    dictionnary.each do |w|
      if word.downcase.include?(w)
        result[w] =+ 1
      end
    end
  }

  return result
end

# puts substrings("below", dictionary)
# puts substrings("own", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
