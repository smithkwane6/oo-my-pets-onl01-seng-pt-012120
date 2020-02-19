class Owner
  # code goes here
  # code goes helper_method
  attr_reader :species, :name
  attr_accessor :cat, :dog

  @@all = []
  @@cats = []
  @@dogs = []

  def initialize(name)
    @species = "human"
    @@all << self
    @name = name
    @dogs = []
    @cats = []
  end

  def self.all
    @@all
  end


  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    return "I am a human."
  end

  def cats
    @cats
  end

  def dogs
    @dogs
  end

  def buy_cat(name)
    cat = Cat.new(name, self)
    @@cats << cat
    cat.owner = self
  end

  def buy_dog(name)
    dog = Dog.new(name, self)
    @@dogs << dog
    dog.owner = self
  end

  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}

  end

  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end

  def sell_pets
    pets.each do |type, pets|
      pets.map {|pet| pet.mood = "nervous"}
    end
    pets.clear
  end
  def list_pets
    return "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
  end

end
