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

def alias(str)
  a = str.downcase
  codename = ""
  counter = 0
  vowels = "aeiou"
  until counter == a.length
  	if vowels.include?(a[counter]) == true
  		codename += next_vowel(a[counter])
  		counter +=1 
  	else
  		new_word += next_consonant(a[counter])
  		counter +=1
  	end
  end
end

def something(str)
  a = str.downcase
  counter = 0
  new_word = ""
  vowels = "aeiou"
  until counter == a.length
    if vowels.include?(a[counter]) == false
      new_word += next_consonant(a[counter])
      counter +=1 
    else 
      new_word += next_vowel(a[counter])
      counter +=1
    end
  end
  return new_word
end
