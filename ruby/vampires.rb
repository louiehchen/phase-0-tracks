puts "How many employees are being processed?"
employees = gets.to_i

until employees == 0

	puts "What is your name?"
	name = gets.chomp
	puts "How old are you?"
	age = gets.to_i
	puts "What year were you born?"
	year = gets.to_i
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
	bread = gets.chomp
	puts "Would you like to enroll in the company's health insurance? (Y/N)"
	health = gets.chomp
	puts "Do you have any allergies (Y/N)?"
	allergies = gets.chomp
		if allergies == "Y"
			user_input = ""
			until user_input == "Done" || user_input == "Sunshine"
			puts "List an allergy you have, type 'Done' when you're finished"
			user_input = gets.chomp
			end
		end

	current_year = 2016

	if name == "Drake Cula" || name == "Tu Fang"
		result = "Definitely a vampire"
	elsif user_input == "Sunshine"
		result = "Probably a vampire."
	elsif (age != current_year - year && bread == "N" && health == "N")
		result = "Almost certainly a vampire"
	elsif (age == current_year - year && (bread == "Y" || health == "Y"))
		result = "Probably not a vampire"
	elsif (age != current_year- year && (bread == "N" || health == "N"))
		result = "Probably a vampire"
	else
		result = "Results inconclusive"

	end
	puts result
	employees = employees - 1

end
	puts "Actually, nevermind! What do these questions have to do with anything? Let's all be friends."
