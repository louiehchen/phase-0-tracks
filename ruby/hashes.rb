# Prompt user for information such as name, age, experience, number of children, and theme
# Convert info into hash
# Print hash back out
# If user wants to make changes, allow them to do so until "none" is typed

int_design = {}

	puts "Welcome, please answer a few questions:"
	puts "What is your name?"
	int_design[:name] = gets.chomp

	puts "When is your birthday?"
	int_design[:birthday] = gets.chomp

	puts "How many years experience do you have?"
	int_design[:exp] = gets.chomp

	puts "How many children do you have?"
	int_design[:children] = gets.chomp

	puts "What should the decor theme be?"
	int_design[:decor_theme] = gets.chomp

p int_design

	puts "Would you like to change any of your answers? If not, type 'none'."
	input_change = gets.chomp
		if input_change == "none"
				input_change = nil
		else
			input_change = input_change.intern

			puts "What is your new answer?"
			int_design[input_change] = gets.chomp
		end

p int_design

