def caesar_cipher (coded_string, shift)
  shift_array = (26 - shift) % 26
  alphabet = ("a".."z").to_a
  ciphered = alphabet.rotate(shift_array)
  caps_alphabet = ("A".."Z").to_a
  caps_ciphered = caps_alphabet.rotate(shift_array)
  to_cipher = alphabet.zip(ciphered).to_h
  to_caps_cipher = caps_alphabet.zip(caps_ciphered).to_h
  coded_string.each_char.map { |char| to_cipher.fetch(char, char) }.join.each_char.map{ |char| to_caps_cipher.fetch(char, char) }.join
end

puts caesar_cipher("HeLLo, WoRlD~!", 100)
