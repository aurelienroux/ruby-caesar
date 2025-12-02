
def main(string, shift)
  alphabet = ("a".."z").to_a
  result = string.each_char.map do |char|
    if(char == " ")
      char
    else
      current_index = alphabet.index(char.downcase)
      new_index = (current_index + shift) % 26

      alphabet[new_index]
    end
  end

  print result.join()
end

main("Abc def", 25)
