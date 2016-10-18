# Robot translator

# If letter is first half of alphabet then it becomes "bloop"

# Otherwise if the letter is capitalized or it's the letter "e", it becomes "buzz"

# If it's not a letter at all, it becomes "boing"

# Otherwise, it becomes "beep"

# Test phrase = "Happy Halloween"

def translate_char(char)
	alphabet = "abcdefghijklmnopqrstuvwxyz" # list of possible characters
	halfway = alphabet.length/2 
	is_capitalized = (char.upcase == char) # checks if character has already been capitalized or not
	if alphabet.index(char.downcase) == nil # if character is a letter at all
		"boing"
	elsif is_capitalized && alphabet.index(char.downcase) < halfway # checks if letter is capitalized and in first half of alphabet
		"bloop"
	elsif is_capitalized || char == "e" # checks if letter is capitalized or "e"
		"buzz"
	else
		"beep"
	end

end

def translate_phrase(phrase)
	char_index = 0
	translated_response = "" # empty string to be filled
	while char_index < phrase.length # for each character, we translate it
		translated_response << translate_char(phrase[char_index])
		char_index += 1
	end
	translated_response 
end
# puts translate_phrase("Happy Halloween!") == "bloopbeepbeepbeepbeepboingbloopbeepbeepbeepbeepbeepbuzzbuzzbeepboing" returns true

# USER INTERFACE

loop do # loop allows user to translate as many phrases as they wantg
	puts "Enter a phrase to translate (or type q to quit):"
	inputted_phrase = gets.chomp
	break if inputted_phrase == 'q'
	puts translate_phrase(inputted_phrase) # passes inputted phrase through translate method
end