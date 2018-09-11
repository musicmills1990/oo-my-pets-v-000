require 'pry'
class Cat

attr_accessor :mood
attr_reader :name

def initialize(name)
  @name = name
  @mood = "nervous"
end

def name=(name)
  self.new(name)
end
binding.pry

end
