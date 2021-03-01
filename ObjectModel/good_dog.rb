class GoodDog
  @@number_of_dogs = 0
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    # @@number_of_dogs += 1
    @name = n
    @age  = a * DOG_YEARS
  end

#   def self.total_number_of_dogs
#     @@number_of_dogs
#   end

  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end
end

# puts GoodDog.total_number_of_dogs   # => 0

# dog1 = GoodDog.new
# dog2 = GoodDog.new

# puts GoodDog.total_number_of_dogs   # => 2

#This is an example of using a class variable and a class method to keep track of a class level detail that pertains only to the class, and not to individual objects.

sparky = GoodDog.new("Sparky", 4)
puts "#{sparky}"