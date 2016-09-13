puts "What is your hamster's name?"
hamster_name = gets.chomp
puts "Oh, so your hamster is #{hamster_name}!"
puts "On a scale from 1 - 10, how loud is your hamster?"
volume = gets.chomp
	volume = volume.to_i
	if volume >=1 && volume <5
		volume = "soft"
	elsif volume >=5 && volume <=10
		volume = "loud"
	end
puts "Wow your hamster is #{volume}!"
puts "What color is your hamster?"
color = gets.chomp
puts "Cool, your hamster is #{color}"
puts "Is your hamster good to adopt? (Y/N)"
adoption = gets.chomp
	if adoption == "Y"
		puts "Great!"
	elsif adoption == "N"
		puts "Not great!"
	end
puts  "How old is your hamster?"
age = gets.chomp
	if age == ""
		age = nil
	else age.to_i
	end
puts "Wow your hamster is #{age}"