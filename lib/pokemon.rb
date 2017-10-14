class Pokemon
  attr_accessor :id, :name, :type, :db, :hp
  @@total = 0

  def initialize(id:, name:, type:, db:, hp: == nil)
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
    pokemon = prep.execute!(id)
    binding.pry
    prep.execute!(id).flatten.each_with_index do |value, i|
      header = prep.execute(id).columns[i].to_sym
      new_pokemon[header] = value
      #binding.pry
    end
    new_pokemon[:db] = @db
    Pokemon.new(new_pokemon)
    binding.pry
  end

end
