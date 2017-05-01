require 'sqlite3'


def start_test
  db = SQLite3::Database.new("problems.db")
  db.results_as_hash = true
  create_table_cmd = <<-SQL 
    CREATE TABLE IF NOT EXISTS problems (
      id INTEGER PRIMARY KEY,
      first_num INT,
      second_num INT,
      operand CHAR(3),
      right_answer INT,
      user_answer INT,
      correct BOOLEAN
    )
  SQL

  db.execute(create_table_cmd)
  p "Welcome to Mental Math 101!"

  menu(db)
end

def menu(db)
  puts "Welcome to Mental Math 101!"
  puts "Today, we're going to take a quiz to strengthen your mental math skills!"
  puts "Please select from the following options"

  puts "1. Quick Test (5 addition problems, easy difficulty)"
  puts "2. Take Custom Test (using custom settings)"
  puts "3. End"
  
  answer = gets.chomp
  case answer 
  when "1"
    quick_play(db)
  when "2"
    custom_test(db)
  when "3"
    puts "Thanks for playing!"
  end
end

def quick_play(db)
  5.times do
    create_problem(db, "+", 1)
  end
end

def custom_test(db)
  puts "Would you like to practice addition (type 1) or subtraction (type 2)"
  mode = gets.chomp
  case mode
  when "1"
    operand = "+"
    puts "Loading Addition Problems..."
  when "2"
    operand = "-"
    puts "Loading subtraction problems..."
  else 
    puts "That's not a valid answer (please answer 1 or 2)"
    settings 
  end
  
  puts "Set a difficulty from 1-10, 10 being the hardest"
  difficulty = gets.chomp.to_i
  
  puts "How many problems would you like to do?"
  count = gets.chomp.to_i
  count.times do 
    create_problem(operand, difficulty)
  end
  
  puts "Would you like to take another test? (y/n)"
  answer = gets.chomp
  if answer == "y"
    menu
  end
end

def create_problem(db, operand, difficulty)
  max = difficulty * 10 
  first_num = rand(1..max)
  second_num = rand(1..max)
  if operand == "+"
    puts "#{first_num} + #{second_num} equals?"
    right_answer = first_num + second_num
  end
  if operand == "-"
    puts "#{first_num} - #{second_num} equals?"
    right_answer = first_num - second_num
  end
  user_answer = gets.chomp.to_i
  if user_answer == right_answer
    puts "Correct!"
    correct = true
  else
    puts "Incorrect! The answer was #{right_answer}!"
    correct = false
  end
  db.execute("INSERT INTO problems (first_num, second_num, operand, right_answer, user_answer, correct) VALUES [?,?,?,?,?,?]", [first_num, second_num, operand, right_answer, user_answer, correct])
end

#driver
start_test
create_problem(db, "+", 3)
