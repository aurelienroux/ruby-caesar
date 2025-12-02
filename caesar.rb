
def main(string, shift)
  alphabet = ("a".."z").to_a
  result = string.chars.map do |char|
    if(char =~ /[a-zA-Z]/)
      current_index = alphabet.index(char.downcase)
      new_index = (current_index + shift) % 26
      alphabet[new_index]
    else
      char
    end
  end

  print result.join()
end

main("Abc!111def", 25)
