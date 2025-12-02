
def main(string, shift)
  alphabet = ("a".."z").to_a
  result = []

  string.each_char { |char|
    current_index = alphabet.index(char)
    result<< [alphabet[current_index + shift]]
  }
  print result.join()
end

main("bac", 1)