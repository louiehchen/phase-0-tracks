class Dancer
	
	attr_accessor :age, :partner
	attr_reader :name
	
	def initialize(name, age)
		@name = "Misty Copeland"
		@age = 33
		@queue = []		
		@partner = partner
	end

	def age
		@age
	end

	def name
		@name
	end

	def pirouette
		p "*twirls*"
	end

	def bow
		p "*bows*"
	end

	def queue_dance_with(partner)
		@queue << partner
	end

	def card
		p @queue
	end

	def begin_next_dance
		@queue[0] = first
			p "Now dancing with #{first}"
		@queue.delete_at(0)
			
	end

	def twerk
		p "*twerks*"
	end



end

