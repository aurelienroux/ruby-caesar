dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (sentence, dictionnary)
  hash = Hash.new()

  sentence.scan(/[a-zA-Z]+/) { |word|
    dictionnary.each do |w|
      if word.downcase.include?(w)
        if hash[w]
          hash[w] = hash[w] + 1
        else
          hash[w] = 1
        end
      end
    end
  }

 puts hash
end

# substrings("below", dictionary)
# substrings("own", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
