class Pokemon
  attr_accessor :id, :name, :type, :db
  @@total = 0

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    @@total += 1
    prep = db.prepare("INSERT INTO pokemon (name, type) VALUES (?, ?)")
    prep.execute(name, type)
  end

  def self.find(id, db)
    prep = db.prepare("SELECT * FROM pokemon WHERE id = ?")
    new_pokemon = {}
    prep.execute(id).columns.each do |column|
    
    binding.pry
  end
end
