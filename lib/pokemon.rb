class Pokemon
  attr_accessor :id, :name, :type, :db
  @@all = []

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
    @@all < self
  end

  def self.save
    @@all.each do |instance|
      
    end
  end
end
