puts "What is the hamster's name?"
name = gets.chomp
puts name

puts "How loud is the hamster, from a scale of 1 to 10?"
volume = gets.chomp
puts volume.to_i

puts "What color fur does the hamster have?"
fur_color = gets.chomp
puts fur_color

puts "Is this hamster a good candidate for adoption? (Y or N)"
candidate = gets.chomp
eligible = false
if candidate == "Y" or candidate == "y"
	eligible = true
elsif candidate == "N" or candidate == "n"
	eligible = false
else
	eligible = false
end
puts eligible


puts "How old is the hamster? If not sure, leave blank."
answer = gets.chomp
age = ""
if answer == ""
	age = nil
else
	age = answer.to_i
end
puts age
