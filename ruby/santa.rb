class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_rank = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		puts "Initializing Santa instance..."
	end
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at
		@reindeer_rank.delete_at(@reindeer_rank.index(reindeer))
		@reindeer_rank.insert(-1, reindeer)
	end

	

end

# santas = Santa.new("male", "Borg")

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

puts "How many santas would you like to create?"
number_santas = gets.to_i

x = 1

number_santas.times do 
	until x == number + 1
		santa = Santa.new(example_genders.sample, example_ethnicities.sample)
		rand(140).times do 
			santa.celebrate_birthday
		end
			puts "Santa serial ##{x}"
			puts "Gender: #{santa.gender}"
			puts "Ethnicity: #{santa.ethnicity}"
			puts "Age: #{santa.age}"
		x += 1
	end
end