# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
p zombie_apocalypse_supplies.join("*")

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----
def bubble_sort (array)
  n = array.length

  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1]=array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

bubble_sort(zombie_apocalypse_supplies)

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----
def duplicate(str, array)
  dupe = false
  array.each do |item|
    if str == item
      dupe = true
      break
    else
      dupe = false
    end
  end
  if dupe == true
    return "You already have #{str}"
  else 
    return "#{str} is not in your list of supplies"
  end
end

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----
def discard(array, int) #int represents inventory slots
	if array.length <= int
		return array
	else 
		return array[0..int-1]
	end
end

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----

def last_of_us(joel, ellie)
	return joel | ellie
end

p last_of_us(zombie_apocalypse_supplies, other_survivor_supplies)

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
linked_list = []
extinct_animals.each do |key,value|
  linked_list << "#{key} - #{value}"
end
p linked_list.join(" * ")

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----
extinct_hash = {}

extinct_animals.each do |key, value|
  if value < 2000
    extinct_hash[key] = value
  end
end

puts "#{extinct_hash}" 

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

extinct_animals.each do |key, value|
	extinct_animals[key] = value - 3
end

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----
check_species = ["Andean Cat", "Dodo", "Saiga Antelope"]
counter = check_species.length

extinct_animals.each do |key, value|
  for i in 0...counter
    if key == check_species[i]
      puts "#{check_species[i]} is extinct"
    end
  end
end

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
