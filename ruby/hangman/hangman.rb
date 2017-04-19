class Hangman
  attr_accessor :answer_array
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

puts "Player 1, what word would like you Player 2 to guess?"
hangman = gets.chomp 
game = Hangman.new(hangman)