class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?) WHERE id = ?")
    # if self
    #   self.update
    # else
    #   sql = <<-SQL
    #   INSERT INTO pokemon (name, type, db)
    #   VALUES (?, ?, ?)
    #   SQL
    # 
    #   DB[:conn].execute(sql, self.name, self.type, self.db)
    #   @id = DB[:conn].execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
    # end
  end

  def self.find
  end


end
