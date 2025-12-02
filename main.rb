
def main(string, shift)
  alphabet = ("a".."z").to_a
  result = []

  string.each_char { |char|
    if(char == " ")
      result << " "
    else
      current_index = alphabet.index(char)

      if current_index + shift > 25
        current_index -= 26
      end

      result << alphabet[current_index + shift]
    end
  }

  print result.join()
end

main("abc def", 25)
