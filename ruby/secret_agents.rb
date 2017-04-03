#Psuedocode for encrypt
#call .next for each character in word
#increment counter by one until it matches length of word

def encrypt(str)
	counter = 0
	word = ""
	until counter == str.length
		word += str[counter].next
		counter += 1
	end
	puts word
end

encrypt("abcd")
encrypt("zywx")
encrypt("hello world")

#Psuedocode for decrypt
#create alphabet string for comparison
#for each letter in string, find appropriate index value in alphabet string
#return the appropriate index value minus one and append it to the decrypted string

def decrypt(str)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	word = ""
	counter = 0 
	until counter == str.length
		letter_number = alphabet.index(str[counter]) #matches each character with appropriate index value in alphabet
		word += alphabet[letter_number - 1]
		counter += 1
	end
	puts word
end


