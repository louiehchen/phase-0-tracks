require_relative "game"

describe Hangman do
	let(:game) { Hangman.new("test") }

	it "sets guesses to length of word" do
		expect(Hangman.guess_count).to eq(4)
	end

	it "puts all guesses into an array" do
		expect(Hangman.all_guesses).to eq([])
	end

	it "sets blank_word to a string of spaces" do
		expect(Hangman.blank_word).to eq("_ "*4)
	end

	it "checks letters if they are correct" do
		expect(Hangman.check_letter("t")).to eq "t _ _ t "
	end

	it "checks letters if they have been guessed before" do
		Hangman.all_guesses = ["t"]
		expect(Hangman.check_letter("t")).to eq "You already guessed that, try again"
	end

	it "determines if player 2 wins the game" do
		expect(Hangman.win).to eq "Congratulations, you guessed the word! It was TEST!"
	end

end