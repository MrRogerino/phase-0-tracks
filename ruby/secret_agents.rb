#Psuedocode for encrypt
#call .next for each character in word
#increment counter by one until it matches length of word

def encrypt(str)
	counter = 0
	word = ""
	until counter == str.length
		if str[counter] == "z" #edge case
			word += "a"
			counter +=1
		else
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

decrypt("bcd")
decrypt("abcd")
decrypt("helloworld")

#Driver code
encrypt("abc") 
encrypt("zed") 
decrypt("bcd")
decrypt("afe")

decrypt(encrypt("swordfish"))
#The above method call works similarly to how parentheses work in math. The inside operation, encrypt("swordfish") is evaluated first.
#Encrypt returns a string, which is then used by the decrypt method


