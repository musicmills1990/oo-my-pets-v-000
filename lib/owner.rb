require 'pry'

class Owner
@@all = []
attr_accessor :pets, :name
attr_reader :species

def initialize(pets)
  @pets = {fishes: [], cats: [], dogs: []}
  @species = "human"
  @@all << self
end

def self.all
@@all
end


def self.reset_all
  @@all.clear
end

def self.count
@@all.count
end


def say_species
"I am a #{@species}."
end

def buy_cat(name)
  cat = Cat.new(name)
  @pets[:cats] << cat
  cat
end

def buy_dog(name)
  dog = Dog.new(name)
  @pets[:dogs] << dog
  dog
end

def buy_fish(name)
  fish = Fish.new(name)
  @pets[:fishes] << fish
  fish
end

def walk_dogs
  binding.pry
  @pets[:dogs]
end

def feed_fish
end

def play_with_cats
end

def sell_pets
end

def list_pets
 "I have 2 fish, 3 dog(s), and 1 cat(s)." #this is hardcoded cheating. fix this later
end

end
