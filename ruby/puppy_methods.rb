class Puppy
	def initialize
		p "Initializing new puppy instance..."
	end
	# Initialize runs when we call a new puppy instance.
	# Mispelling initialize causes it not to run.

  	def fetch(toy)
    	puts "I brought back the #{toy}!"
    	toy
  	end

  	def speak(num)
  		num.times { puts "Woof!"}
	end
	# Puppy.new.speak(3) returns "Woof!" "Woof!" "Woof!"

	def roll_over
		puts "*rolls over*"
	end
	# Puppy.new.roll_over returns "*rolls over*"

	def dog_years(year)
		p year*7
	end
	# Puppy.new.dog_years(2) returns "14"

	def shake_hand
		puts "*shakes hand*"
	end
	# Puppy.new.shake_hand returns "*shakes hand*"
end

class Kitten
	def initialize
		puts "Initializing new kitten instance..."
	end

	def speak(num)
		num.times { puts "Meow!" }
	end

	def chase
		puts "*chases toy*"
	end

end

kittens = [] 

50.times do 
	kittens << Kitten.new
end

kittens.each do |kitten|
	kitten.speak(3)
	kitten.chase
end
