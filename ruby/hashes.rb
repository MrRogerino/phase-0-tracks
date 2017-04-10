#psuedocode
=begin 
Create empty hash
Prompt user for different details of customer and store details in the hash
Ask user if they want to update any information of the customer
	-If yes, ask for which detail to update, then store new response
Print hash
=end

customer_profile = {}

puts "Name of customer: "
customer_profile[:name] = gets.chomp 

puts "Age of customer: "
customer_profile[:age] = gets.chomp.to_i 

puts "Phone number of customer: "
customer_profile[:phone] = gets.chomp.to_i 

puts "Is customer married? (y/n): "
marriage = gets.chomp
if marriage == "y"  
	customer_profile[:married] = TRUE
else 
	customer_profile[:married] = FALSE	
end

puts "Does customer have children (y/n): "
children = gets.chomp
if children == "y"
  customer_profile[:children] = TRUE
else
  customer_profile[:children] = FALSE
end

puts "This is the profile of the customer: #{customer_profile}"	

puts "Would you like to edit any details of customer? Type none to skip"
answer = gets.chomp
if answer == "none"
	puts "This is the profile of the customer: #{customer_profile}"
else
	answer = answer.to_sym
	puts "Which detail would like to change?"
	customer_profile[answer] = gets.chomp
	puts "This is the updated profile of the customer: #{customer_profile}"
end



