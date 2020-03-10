require 'pry'

class Owner
  attr_accessor :name, :species
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    puts "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def reset_all
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
    binding.pry
  end

  def buy_dog(name) #makes new dog with name argument and assigns to this owner

  end

  def walk_dogs #changes all of this owners dogs moods to "happy"

  end

  def feed_cats #changes all of this owners cats moods to "happy"

  end

  def sell_pets #removes the pet from this owner (setting their owner to nil) and resets their mood to "nervous".

  end

  def list_pets #puts a list "I have #{@owner.dogs.count} dog(s), and #{@owner.cats.count} cat(s)."
  puts "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end


end
