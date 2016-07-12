class  Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{@name.upcase}."
  end
end

# name = 'Fluffy'
# Fluffy = Pet.new(name)
# puts Fluffy.name
# puts Fluffy
# puts Fluffy.name
# puts name

name = 42
fluffy = Pet.new(name) # passes 42 into the class when instantiating the object, 
# so fluffy's name is "42"
name += 1 # reassigns 43 to the local variable name
puts fluffy.name # => 42 (the original value passed into the class when fluffy was instantiated)
puts fluffy # => My name is 42.
puts fluffy.name # => 42
puts name # => 43 (the reassigned value of 'name')