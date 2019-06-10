class Pokemon
  attr_accessor :id, :name, :type, :db, :hp
  @@all = []

  def initialize(id:, name:, type:, db:, hp: 60)
    @id = id
    @name = name
    @type = type
    @db = db
    @hp = hp

    @@all << self
  end

  def self.find(find_id, db)
   pokemon_row = db.execute("SELECT * FROM pokemon WHERE id=?", find_id).flatten
   Pokemon.new(id: pokemon_row[0], name: pokemon_row[1], type: pokemon_row[2], db: db, hp: pokemon_row[3])
  end

  def self.all
    @all
  end

  def self.save(name, type, db)
      db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?, ?)", name, type)
    end

end
