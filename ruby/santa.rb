class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender 

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(0..140)
    print "\n Initializing Santa instance... "

  end

  def speak
    print "\n Ho, ho ho! Haaaaaaaaapy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    print "\n That was a good #{cookie}!"
  end

  def celebrate_birthday
    @age +=1
  end

  def get_mad_at(reindeer)
    if @reindeer_ranking.include?(reindeer.capitalize)
      @reindeer_ranking -= [reindeer]
      @reindeer_ranking += [reindeer]
    else
      print "\n #{reindeer} is not a real reindeer!"
    end
  end

=begin 
  def gender(new_gender)
    @gender = new_gender
  end

  def age
    print "\n #{@age}"
  end

  def ethnicity
    print "\n #{@ethnicity}"
  end
=end

end

#release 4 
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

total_santas = 1
santa_count = 0
until santa_count == total_santas
    santa = Santa.new(example_genders.sample, example_ethnicities.sample)
    print "\n Age: #{santa.age}"
    print "\n Ethnicity: #{santa.ethnicity}"
    print "\n Gender: #{santa.gender}"
    print "\n This is Santa number #{santa_count} of #{total_santas}"
    santa_count +=1
end


#driver
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
#- - - - - -
kris = Santa.new("male", "black")
kris.age
kris.ethnicity
kris.celebrate_birthday
kris.age
kris.gender("female")
