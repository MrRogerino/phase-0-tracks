#swaps first and last name

def name_swap(str)
  new_name = str.split(' ').reverse
  return new_name
end
#old refactored code - - - -
=begin 
#consonant and vowel scrambler
def next_consonant(str)
  letter = str.downcase
  consonants = "bcdfghjklmnpqrstvwxyz"
  counter = 0
  until letter == consonants[counter]
    counter +=1
  end
  letter = consonants[counter + 1]
  if letter == nil #edge case
    return "b"
  else
    return letter
  end
end
=end
def next_letter(letter)
  vowel_cipher = {'a' => 'e',  'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a'}
  consonant_edge_cases = ['d','h','n','t']
  if vowel_cipher.has_key?(letter)
    letter = vowel_cipher[letter]
  elsif consonant_edge_cases.include?(letter)
    letter = letter.next.next
  elsif letter == 'z'
    letter = 'b'
  else
    letter = letter.next 
  end
  return letter
end

def better_encrypt(name)
  name = name.downcase
  new_name = ""
  name.each_char do |letter|
    new_name += next_letter(letter)
  end
  return new_name
end

better_encrypt("hahaha")
better_encrypt("Linda")

def alias_generator(name)
  scramble = name_swap(name)
  alien = better_encrypt(scramble[0]).capitalize + " " + better_encrypt(scramble[1]).capitalize
  return alien
end

alias_generator("James Harden")
#future edit: use array loop to test for names with more than two words

#Interface
#Interface
puts "Please enter a name to be encrypted, or type quit to finish"
answer = ""
while answer != "quit"
  answer = gets.chomp
  if answer == "quit"
    break
  else
    puts "#{answer}'s alias is #{new_alias(answer)}"
  end
end