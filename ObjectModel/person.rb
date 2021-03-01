module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

class Person
  include Speak
end

person = Person.new
person.speak("Hello!")

class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  # def name
  #   @name
  # end

  # def name=(n)
  #   @name = n
  # end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end

end


sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
puts sparky.info

sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info 