
def main(string, shift)
  alphabet = ("a".."z").to_a
  result = []

  string.each_char { |char|
    if(char == " ")
      result << " "
    else
      current_index = alphabet.index(char)
      new_index = (current_index + shift) % 26

      result << alphabet[new_index]
    end
  }

  print result.join()
end

main("abc def", 25)
