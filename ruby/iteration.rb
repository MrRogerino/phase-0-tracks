shooting_guards = ["MJ", "Kobe", "Wade", "West"]

#the mindset of an educated fan
shooting_guards.each do |player|
  puts "#{player} is a great player"
end

puts shooting_guards

#the mindset of a casual fan
shooting_guards.map! do |player|
	puts "No, #{player} is the best!"
end

teams = {
	Bulls: "MJ",
	Lakers: "Kobe",
	Heat: "Wade",
}

teams.each do |team|, |player|
	puts "#{player} played for the #{team}"
end

