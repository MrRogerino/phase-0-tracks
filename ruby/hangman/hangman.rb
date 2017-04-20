class Hangman
  attr_reader :answer_array,:guesses_allowed, :game_over
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
    if @answer_array == @guess_array
      @game_over = true
    end
  end
end


#driver
puts "Player 1, what word would like you Player 2 to guess?"
word = gets.chomp
hangman = Hangman.new(word)
p hangman.answer_array
p hangman.guess_array
until hangman.game_over
  puts "Player 2, guess a letter"
  guess = gets.chomp
  hangman.check(guess)
end
if hangman.game_over
  puts "GG!"
end