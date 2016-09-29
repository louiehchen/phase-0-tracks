# module Shout
#	def self.yell_angrily(words)
		words + "!!!" + " :("
#	end

#	def self.yelling_happily(words)
		words + "!!!" + " :)"
#	end
# end

# p Shout.yell_angrily("LANA") returns "LANA!!! :("

# p Shout.yelling_happily("Yay") returns "Yay!!! :)"

module Shout
	def slogan(team)
		puts "Let's go #{team}!"
	end

end

class Giants
	include Shout
end

class Dodgers
	include Shout
end

giants = Giants.new
giants.slogan("Giants")

dodgers = Dodgers.new
dodgers.slogan("Dodgers")

