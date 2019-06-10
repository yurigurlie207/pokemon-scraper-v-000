class Pokemon
  attr_accessor :id, :name, :type, :hp, :db
  @@all = []

  def initialize(id: "", name: ="", type: ="", db: ="")
    @id = id
    @name = name
    @type = type
    @db = db

    @@all << self
  end

  def self.all
    @all
  end


end
