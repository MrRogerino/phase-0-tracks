require 'sqlite3'


  db = SQLite3::Database.new("problems.db")
  db.results_as_hash = true
  create_table_cmd = <<-SQL 
    CREATE TABLE IF NOT EXISTS problems (
      id INTEGER PRIMARY KEY,
      first_num INT,
      second_num INT,
      operand CHAR(1),
      right_answer INT,
      user_answer INT,
      correct BOOLEAN
    )
  SQL

  db.execute(create_table_cmd)
  p "Welcome to Mental Math 101!"


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
create_problem(db, "+", 2)