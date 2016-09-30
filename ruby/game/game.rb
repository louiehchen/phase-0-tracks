=begin Basically a Hangman-like game where the first player inputs a word and the second player 
tries to guess it.
First Player 1 chooses a word
Then Player 2 gets the length of the word in blanks or underscores
Player 2 has chances to guess letters up to the number of letters there are in the word. (length)
Player 2 can guess any letter of the alphabet
Correct guesses replace the blank with that letter
Repeated guesses don't count against Player 2
Incorrect guesses are prompted with "Guess again", guess count decreases by 1
If Player 2 succeeds, display congratulations, if Player 2 fails, taunt mercilessly
=end

class Hangman

	attr_accesor :word, :all_guesses, :win, :lose, :guess_count, :blank_word

	def initialize(word)
		@word = word
		@guess_count = word.length
		@all_guesses = []
		@blank_word = '_' * word.length
		@is_over = false
		@win = false
		
	end

	def check_letter(letter)
		return puts "You've already guessed that, try again" if @all_guesses.include?(letter)
		if @word.include?(letter)
			puts "Go on.."
			char_index = 0
			word.each_char do |x|
				if x == letter
					blank_word[char_index] = x
				end
				char_index += 1
			end
			puts @blank_word
		else
			puts "Guess again"
			puts @blank_word
		end
		@all_guesses << letter 
		@guess_count -= 1
		puts "#{guess_count} chance(s) remain"
		@blank_word
	end

	def is_over?
		if @blank_word == @word || @guess_count == 0
			@is_over = true
		end
		@is_over

	def win
		if @blank_word == @word 
			puts "Congratulations, you guessed the word! It was #{word.upcase}!"
			win = true
		else
			puts "You lose. Loser."
		end
end

# User interface

puts "Let's play a game, Player 1, pick a word:"
word = gets.chomp
game = Hangman.new(word)


	while Hangman.guess_count > 0

		puts "Player 2, you have #{game.guess_count} guesses left, guess a letter:"
		puts game.blank_word
		letter = gets.chomp
		Hangman.check_letter(letter)
		break if Hangman.is_over?
end
Hangman.win


