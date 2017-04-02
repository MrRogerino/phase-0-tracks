puts "How many employees are we interviewing?"
employees = gets.chomp 

employees_interviewed = 0
until employees_interviewed == employees.to_i
	puts "You've interviewed #{employees_interviewed} out of #{employees} employees"

	  vamp_score = 0
	  
	  puts "What is your name?"
	  name = gets.chomp
	  
	  puts "How old are you?"
	  age = gets.chomp
	  
	  
	  puts "What year were you born?"
	  birthyear = gets.chomp
	  real_age = 2017 - birthyear.to_i
	  puts "#{name}'s real age is #{real_age}."
	  
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
	  
	  
	  
	  if garlic == "Y" or garlic == "y"
	  	allergic = false
	  else
	  	allergic = true
	  	vamp_score += 1
	  end
	  if insurance == "Y" or insurance == "y"
	  	immortal = false
	  else
	  	immortal = true
	  	vamp_score +=1
	  end
	  puts "Allergic: #{allergic}"
	  puts "Honest: #{honest}"
	  puts "Immortal: #{immortal}"

	  if name == "Drake Cula" or name == "Tu Fang"
	    vamp_score += 10 
	  end
	  
	  #score check
	  #puts "current score: #{vamp_score}"

	  allergy = ""
	  puts "Please list any allergies you have. Say 'done' when you are finished"
	  while allergy != "done"
	  	allergy = gets.chomp
	  	if allergy == "sunshine"
	  		vamp_score = 3
	  		break
	  		end
	  	end

	  puts "#{name}'s score is #{vamp_score}!"
	  	
=begin 	WRONG ORDER
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
	    puts "#{name} is definitely a vampire"
	  elsif vamp_score >= 4
	    puts "#{name} is almost certainly a vampire"
	  elsif vamp_score >= 3
	    puts "#{name} is probably a vampire"
	  elsif vamp_score >= 2 
	    puts "results inconclusive"
	  else
	    puts "#{name} is probably not a vampire"
	  end
	  
	  employees_interviewed +=1 
	end

