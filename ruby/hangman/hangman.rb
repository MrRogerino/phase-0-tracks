class Hangman
	def initialize(word)
		@answer_array = word.downcase.split('')
		@guess_array = []
		word.length.times do 
			@guess_array << "_"
			end
		@guesses_allowed = 1
		@game_over = false 
	end
end
