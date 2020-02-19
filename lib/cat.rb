class Cat
  # code goes here

  attr_accessor :mood, :owner
  attr_reader :name

  @@all = []

  def initialize(name, owner)
    @name = name
    @mood = "nervous"
    @owner = owner
    @@all << self
    owner.cats << self if !@owner.cats.include?(self)
  end


  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

end
