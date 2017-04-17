class Santa
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
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

  def gender(new_gender)
    @gender = new_gender
  end

  def age
    print "\n #{@age}"
  end

  def ethnicity
    print "\n #{@ethnicity}"
  end

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
