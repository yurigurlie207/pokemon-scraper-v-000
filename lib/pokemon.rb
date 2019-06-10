class Pokemon

  @@all = []

  def initialize(id, name, type)
    @id = id
    @name = name
    @type = type

  end

  def self.all
    @all
  end

  def self.save(id, name, type, db)
    database_connection.execute(("INSERT INTO cats (name, breed,
    age) VALUES (?, ?, ?)",name, breed, age)
  end

end
