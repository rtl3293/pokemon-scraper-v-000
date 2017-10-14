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
    db.execute("INSERT INTO pokemon (id, name, type)
    VALUES (#{@@total}, #{name}, #{type})")
  end
end
