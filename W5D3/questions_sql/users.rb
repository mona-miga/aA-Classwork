# find_by_id

class Users < QuestionsDatabase
  attr_accessor :id, :fname, :lname
  def self.all
    data = QuestionsDatabase.instance.execute("SELECT * FROM users") #we must do .instance because
    #   #PlayDBConnection is a singleton. .execute is the command that allows us to run 
    #   # a query call to the database
    data.map { |datam| Users.new(datam)}
  end

  def initialize(options)
    @id = options['id']
    @fname = options['fname']
    @lname = options['lname']
  end

  def find_by_id(id)
    data = QuestionsDatabase.instance.execute(<<SQL SELECT users FROM users WHERE users.id == id
    
    SQL)
      

  end

  # find_by_id
end 