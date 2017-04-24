# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  #declares the various variables that are called by the other methods
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #summarizes the predicted death and speed of spread methods
  def virus_effects
    density 
    predicted_deaths
    speed_of_spread
  end

  private
  
  #assigns a scale from 1 to 5 based on population density- 1 being the most population dense, 5 being the least
  def density
    density_scale = 0
    if @population_density >= 200
      @density_scale = 1
    elsif @population_density >= 150
      @density_scale = 2
    elsif @population_density >= 100
      @density_scale = 3
    elsif @population_density >= 50
      @density_scale = 4
    else
      @density_scale = 5
    end
  end

  #given a state, its population density, and population, prints a statement saying how many people will die
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @density_scale == 1
      number_of_deaths = (@population * 0.4).floor
    elsif @density_scale == 2
      number_of_deaths = (@population * 0.3).floor
    elsif @density_scale == 3
      number_of_deaths = (@population * 0.2).floor
    elsif @density_scale == 4
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #given a state and its population density, print a statement saying how long it will take to spread across the state
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @density_scale == 1
      speed += 0.5
    elsif @density_scale == 2
      speed += 1
    elsif @density_scale == 3
      speed += 1.5
    elsif @density_scale == 4
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |state, state_info|
  VirusPredictor.new(state, state_info[:population_density], state_info[:population]).virus_effects
end

#=======================================================================
# Reflection Section

#The first way is to declare a key, and then assign that key a value using =>. The second is to declare a key, then assign it a value using a colon.

#Require_relative allows you to call a file from the directory that the program is in- in this case, the gps6 folder. Require calls a module that is built into Ruby, like Math.

#You can use Hash.each do {|key, value| some method}. You can also use the #map method, which allows you to change the values of a hash. 

#The two methods inside virus_effects used two of the same variables- @state and @population_density. 

#I solified how to iterate over hashes, especially accessing the relevant info from inside nested hashes.
