#swaps first and last name

def name_swap(str)
  new_name = str.split(' ').reverse
  return new_name
end

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

def next_vowel(str)
  letter = str.downcase
  vowels = "aeiou"
  counter = 0
  until letter == vowels[counter]
    counter +=1
  end
  letter = vowels[counter + 1]
  if letter == nil #edge case
    return "a"
  else
    return letter
  end
end

def encrypt(str)
  a = str.downcase
  counter = 0
  codename = ""
  vowels = "aeiou"
  until counter == a.length
    if vowels.include?(a[counter]) == false
      codename += next_consonant(a[counter])
      counter +=1 
    else 
      codename += next_vowel(a[counter])
      counter +=1
    end
  end
  return codename
end

def new_alias(str)
	scramble = name_swap(str)
	return encrypt(scramble[0]).capitalize + " " + encrypt(scramble[1]).capitalize
end
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