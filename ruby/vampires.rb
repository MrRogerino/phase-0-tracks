vamp_score = 0

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
	honest = true
else
	honest = false
	vamp_score +=2
end

puts honest

if garlic == "Y" or garlic == "y"
	allergic = false
else
	allergic = true
	vamp_score += 1
end

puts allergic

if insurance == "Y" or insurance == "y"
	immortal = false
else
	immortal = true
	vamp_score +=1
end

puts immortal

if name == "Drake Cula" or name == "Tu Fang"
  vamp_score += 10 
end

	puts "Your score is #{vamp_score}!"
=begin wrong order
	if vamp_score < 2 
	  puts "probably not a vampire"
	elsif vamp_score > 3 
	  puts "results inconclusive"
	elsif vamp_score > 4 
	  puts "probably a vampire"
	elsif vamp_score > 5 
	  puts "almost certainly a vampire"
	elsif vamp_score > 10
	  puts "definitely a vampire"
	end
=end

if vamp_score >= 10
  puts "definitely a vampire"
elsif vamp_score >= 4
  puts "almost certainly a vampire"
elsif vamp_score >= 3
  puts "probably a vampire"
elsif vamp_score >= 2 
  puts "results inconclusive"
else
  puts "probably not a vampire"
end
