class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  
  attr_reader :id
  attr_accessor :name, :grade
  
def initialize(name,grade)
  @name=name
  @grade=grade
end

def self.create_table
  sql = <<- SQL
  CREATE TABLE IF NOT EXSITS students(
    id INTEGER PRIMARY KEY
    name TEXT
    grade TEXT
  );
  SQL
  DB[:conn].execute(sql)
end
  
end
