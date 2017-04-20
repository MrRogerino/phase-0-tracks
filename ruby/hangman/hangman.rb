class Hangman
  attr_reader :answer_array,:guesses_allowed, :game_over
  attr_accessor :guess_array

  def initialize(word)
    @answer_array = word.downcase.split('')
    @guess_array = []
    word.length.times do
      @guess_array << "_"
    end
    @guesses_allowed = word.length + 3
    @game_over = false
  end

  def check(letter)
    if @answer_array.include?(letter)
      match = @answer_array.each_index.select{|i| @answer_array[i] == letter}
      match.each {|a| @guess_array[a] = letter}
      p @guess_array
    end
    if @answer_array == @guess_array
      @game_over = true
    end
    @guesses_allowed -= 1 
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
  puts "You have #{hangman.guesses_allowed} guesses left!"
  guess = gets.chomp
  hangman.check(guess)
  if hangman.guesses_allowed == 0
    puts "You have no more guesses! Try harder next time!"
    break
  end
end
if hangman.game_over
  puts "GG! You won hangman!"
end