puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp

puts "What year were you born?"
birthyear = gets.chomp
real_age = 2017 - birthyear.to_i
puts real_age

puts "Would you like some garlic bread? (Y or N)"
garlic = gets.chomp

puts "Do you need health insurance? (Y or N)"
insurance = gets.chomp

#boolean checks
if age.to_i == real_age 
	lying = false
else
	lying = true
end

puts lying

if garlic == "Y" or garlic == "y"
	allergic = true
else
	allergic = false
end

puts allergic

if insurance == "Y" or insurance == "y"
	immortal = true
else
	immortal = false
end

puts immortal
