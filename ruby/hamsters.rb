puts "What is the hamster's name?"
name = gets.chomp
print name

puts "How loud is the hamster, from a scale of 1 to 10?"
volume = gets.chomp
print volume

puts "What color fur does the hamster have?"
fur_color = gets.chomp
print fur_color

puts "Is this hamster a good candidate for adoption? (Y or N)"
candidate = gets.chomp
print candidate

puts "How old is the hamster? If not sure, leave blank."
answer = gets.chomp
age = ""
if answer == ""
	age = nil
else
	age = answer
end
print age
