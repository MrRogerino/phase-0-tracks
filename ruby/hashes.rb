#psuedocode
=begin 
Create empty hash
Prompt user for different details of customer and store details in the hash
Ask user if they want to update any information of the customer
	-If yes, ask for which detail to update, then store new response
Print hash
=end

customer_details = {}

puts "Name of customer: "
customer_details[:name] = gets.chomp 

puts "Age of customer: "
customer_details[:age] = gets.chomp.to_i 

puts "Phone number of customer: "
customer_details[:phone] = gets.chomp.to_i 

puts "Is customer married? (y/n): "
marriage = gets.chomp
if marriage == "y"  
	customer_details[:married] = TRUE
else 
	customer_details[:married] = FALSE	
end

puts "Does customer have children (y/n): "
children = gets.chomp
if children == "y"
  customer_details[:children] = TRUE
else
  customer_details[:children] = FALSE
end

p customer_details