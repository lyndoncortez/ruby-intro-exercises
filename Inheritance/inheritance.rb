class Animal
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

class Dog < Animal
   attr_accessor :breed
  def initialize(breed, name)
    super(name)
    @breed = breed
  end
end

dog_mo = Dog.new("German Sheperd", "dogie")
puts dog_mo.name
puts dog_mo.breed