# Virus Predictor

# I worked on this challenge [by myself, with: Shana Hagood].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
#It allows us to access the info on the state_data file. Require relative works when the file to be accessed is in the same directory.
# It differs from require in that it only draws code from your local file path. 


=begin For each state it gives us the key/value pairs for population and population. 
It's a nested data structure that contains several hashes inside of one big hash, hence "hashy hash" .
STATE_DATA is a constant variable, as denoted by its ALL_CAPS description, but it doesn't start with a $.

=end
require_relative 'state_data'

class VirusPredictor
# Initializes the state of origin, population density, population arguments
  attr_reader :population_density, :population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# Parses the information from the predicted_deaths method and the speed_of_spread method into one statement.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private # Makes the method not accessible to outside objects, you could use private to hide information from the user such as a password.
# Predicts # of deaths based on population density.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if population_density >= 200
      number_of_deaths = (population * 0.4).floor
    elsif population_density >= 150
      number_of_deaths = (population * 0.3).floor
    elsif population_density >= 100
      number_of_deaths = (population * 0.2).floor
    elsif population_density >= 50
      number_of_deaths = (population * 0.1).floor
    else
      number_of_deaths = (population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# Predicts the spread the virus based population density.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if population_density >= 200
      speed += 0.5
    elsif population_density >= 150
      speed += 1
    elsif population_density >= 100
      speed += 1.5
    elsif population_density >= 50
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

STATE_DATA.each do |state, population|
  states = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  states.virus_effects
  
end
#=======================================================================
# Reflection Section
=begin 
What are the differences between the two different hash syntaxes shown in the state_data file?
The first one uses a hash rocket to set the value of the key string. 
The nested hash uses colon to set the value.

What does require_relative do? How is it different from require?
Calls upon the file in the current directory
Require_relative is local, require is global.

What are some ways to iterate through a hash?
loop, each, do 

When refactoring virus_effects, what stood out to you about the variables, if anything?
I guess refactoring hates instance variables

What concept did you most solidify in this challenge?
I learned a lot about what actually happens when you call different elements in a hash and how to specifically call them. 
=end