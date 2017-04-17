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
end
