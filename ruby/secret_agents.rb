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
