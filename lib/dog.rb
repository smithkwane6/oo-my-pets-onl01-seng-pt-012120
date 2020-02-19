class Dog
  # code goes here
  attr_reader :name
  attr_accessor :mood, :owner

  @@all = []


  def initialize(name, owner)
    @name = name
    @mood = 'nervous'
    @owner = owner
    @@all << self
    self.owner = @owner
    owner.dogs << self if !@owner.dogs.include?(self)
  end

   def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end


end
