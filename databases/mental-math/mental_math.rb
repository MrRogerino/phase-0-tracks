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
  menu
end

def menu
  puts "Welcome to Mental Math 101!"
  puts "Today, we're going to take a quiz to strengthen your mental math skills!"
  puts "Please select from the following options"

  puts "1. Quick Test (5 addition problems, easy difficulty)"
  puts "2. Take Custom Test (using custom settings)"
  puts "3. End"
  answer = gets.chomp

  case answer 
  when "1"
    quick_play
  when "2"
    custom_test
  when "3"
    puts "Thanks for playing!"
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
  db.execute("INSERT INTO problems (first_num, second_num, operand, right_answer, user_answer) VALUES [?,?,?,?,?,?]", [first_num, second_num, operand, right_answer, user_answer, correct])
end

#driver
start_test
