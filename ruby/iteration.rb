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

#release 2

array = [10,20,30,40,50,60,70]

hash = {
	a:1,
	b:2,
	c:3,
	d:4,
	e:5,
	f:6,
	g:7,
}
#delete if certain condition is met
array.delete_if { |number| number % 20 == 0 }

hash.delete_if { |letter, number| letter == "a" or letter == "c"}

#keep if certain condition is met
array.keep_if { |number| number < 35}

hash.keep_if { |letter, number| number % 2 == 1}

#another way to keep if certain condition is met
array.select { |number| number > 35}

hash.select { |letter, number| number.even?}

#remove until certain condition is met
array.take_while { |number| number < 45}

hash.take_while { |letter, number| number < 5}