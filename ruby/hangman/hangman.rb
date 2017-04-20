class Hangman
  attr_reader :answer_array,:guesses_allowed
  attr_accessor :guess_array

  def initialize(word)
    @answer_array = word.downcase.split('')
    @guess_array = []
    word.length.times do
      @guess_array << "_"
    end
    @guesses_allowed = 1
    @game_over = false
  end

  def check(letter)
    if @answer_array.include?(letter)
      match = @answer_array.each_index.select{|i| @answer_array[i] == letter}
      match.each {|a| @guess_array[a] = letter}
    end
  end
end


#driver
puts "Player 1, what word would like you Player 2 to guess?"
hangman = gets.chomp
game = Hangman.new(hangman)
p game.answer_array
p game.guess_array
game.guesses_allowed
puts "Player 2, guess a letter"
guess = gets.chomp
game.check(guess)
p game.guess_array
game.guesses_allowed