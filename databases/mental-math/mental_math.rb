require 'sqlite3'

def start_test
  db =  SQLITE3::Database.new("problems.db")
  db.results_as_hash = true
  create_table_cmd = <<-SQL 
    CREATE TABLE IF NOT EXISTS problems (
      id INTEGER PRIMARY KEY,
      first_num INT,
      second_num INT,
      operand CHAR(1),
      correct_answer INT,
      user_answer INT
    )
  SQL
  db.execute(create_table_cmd)
  p "Welcome to Mental Math 101!"
end

