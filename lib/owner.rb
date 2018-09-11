require 'pry'

class Owner
@@all = []
@@count = 1
attr_accessor :pets, :name
attr_reader :species

def initialize(pets)
  @pets = {fishes: [], cats: [], dogs: []}
  @species = "human"
end

def self.all
owner = Owner.new
@@all << owner
end

def self.count
  @@count
end

def self.reset_all
  binding.pry
  self.count = 0
end

def say_species
"I am a #{@species}."
end

def buy_cat
end

def buy_dog
end

def buy_fish
end

def walk_dogs
end

def feed_fish
end

def sell_pets
end

def list_pets
end

end
