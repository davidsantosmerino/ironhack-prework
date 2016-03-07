require 'pry'
#Iteration 1, with a left shift of 1
def solve_cipher(input, shift)
output = ""
a_ord = "a".ord
z_ord = "z".ord
input.each_char do |character|
  new_character_ord = 0
  if ((character.ord - shift) < a_ord)
    new_character_ord = z_ord - (a_ord - character.ord - shift)
  elsif ((character.ord - shift) > z_ord)
    new_character_ord = a_ord + (character.ord - shift - z_ord)
  else
    new_character_ord = character.ord - shift
  end
  output += (new_character_ord).chr
end
puts output
end

#Iteration 2 and 3, with a shift left or right and -3 as default shift
def solve_cipher_sentences(input, shift = -3)
output = ""
a_ord = "a".ord
z_ord = "z".ord
space_ord = " ".ord
array_input = input.split("")
array_input.each do |character|
  new_character_ord = 0
  if (character.ord === space_ord)
    new_character_ord = character.ord
  elsif ((character.ord + shift) < a_ord)
    new_character_ord = z_ord + (a_ord - character.ord + shift)
  elsif ((character.ord + shift) > z_ord)
    new_character_ord = a_ord + (character.ord + shift - z_ord)
  else
    new_character_ord = character.ord + shift
  end
  output += (new_character_ord).chr
end
puts output
end

solve_cipher("ifmmp", 1)
solve_cipher_sentences("p| uhdo qdph lv grqdog gxfn", -3)
solve_cipher_sentences("p| uhdo qdph lv grqdog gxfn")
