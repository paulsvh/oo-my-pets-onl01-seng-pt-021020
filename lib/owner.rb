class Owner
  attr_reader :name, :species
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    self.all.clear
  end

  def cats #iterates through all owner.cats and returns them in array
    Cat.all.select{|cat| cat.owner == self}
  end

  def dogs #iterates through all owner.dogs and returns them in array
    Dog.all.select{|dog| dog.owner == self}
  end

  def buy_cat(name) #makes new cat with name argument and assigns to this owner
    Cat.new(name, self)
  end

  def buy_dog(name) #makes new dog with name argument and assigns to this owner
    Dog.new(name, self)
  end

  def walk_dogs #changes all of this owners dogs moods to "happy"
    self.dogs.each{|dog| dog.mood = "happy"}
  end

  def feed_cats #changes all of this owners cats moods to "happy"
    self.cats.each{|cat| cat.mood = "happy"}
  end

  def sell_pets #removes the pet from this owner (setting their owner to nil) and resets their mood to "nervous".
    self.dogs.each{|dog| dog.mood = "nervous"}
    self.cats.each{|cat| cat.mood = "nervous"}
    self.dogs.each{|dog| dog.owner = nil}
    self.cats.each{|cat| cat.owner = nil}
  end

  def list_pets #puts a list "I have #{@owner.dogs.count} dog(s), and #{@owner.cats.count} cat(s)."
  "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end


end
