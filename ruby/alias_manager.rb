# Prompt user to input real first and last name
# Swap the first and last names
# For every vowel, convert that vowel to the next vowel in alphabet
# For every consonant, convert that consonant to the next consonant in alphabet
# Make everything lowercase, then have proper capitalization
# Display new name after everything is changed

# Swap first and last names
def name_reverse(first_name, last_name)
	new_name = []
	new_name.push(first_name, last_name)
	new_name.reverse!.join(' ')
end


# changes vowels to next vowel
def next_vowel(reverse_name)
	new_name = reverse_name.downcase.chars # convert to lowercase
	vowels = %w{a e i o u} # list of possible vowels
	new_name.map! do |letter|
		if letter == "u" # edge case
			letter = "a"
		elsif 
			vowels.include?(letter)
				vowels[vowels.index(letter) + 1]
		else
			letter
		end
	end
	new_name.join('').split.map(&:capitalize).join(' ') # recapitalize first letters
end

# changes consonants to next consonant 
def next_consonant(reverse_name)
	new_name = reverse_name.downcase.chars # convert to lowercase
	consonants = %w{b c d f g h j k l m n p q r s t v w x y z} # list of consonants
	new_name.map! do |letter|
		if letter == "z" # edge case
			letter = "b"
		elsif consonants.include?(letter)
			consonants[consonants.index(letter) + 1]
		else 
			letter
		end
	end 
	new_name.join('').split.map(&:capitalize).join(' ')
end

# p next_consonant(next_vowel(name_reverse("Felicia", "Torres")))
# Will return "Vussit Gimodoe"

# Here, the user will interface with the program
 def interface
 	alias_list = {}

 	puts "Let's begin, press Enter to continue, type 'Quit' to quit"
 	user_input = gets.chomp

 	until user_input == "quit"

		puts "Enter your first name"
		first_name = gets.chomp

		puts "Enter your last name"
		last_name = gets.chomp

		new_name = next_consonant(next_vowel(name_reverse(first_name, last_name)))

		first_name = first_name + " "

		full_name = first_name + last_name

		alias_list[full_name] = new_name

		puts "Hit Enter to get a new code name, type 'Quit' to see your results and quit"
		user_input = gets.chomp

	end
	alias_list.each_pair {|full_name, new_name| puts "#{full_name}, your code name is #{new_name}"}
end

interface