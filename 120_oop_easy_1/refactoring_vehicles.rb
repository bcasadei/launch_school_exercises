class Vehicle
  attr_reader :make, :model

  def initialize(make, model)
    @make = make
    @model = model
  end

  def to_s
    "#{make} #{model}"
  end

end

class Car < Vehicle
  def wheels
    4
  end
end

class Motorcycle < Vehicle
  def wheels
    2
  end
end

class Truck < Vehicle
  attr_reader :payload

  def initialize(make, model, payload)
    super(make, model)
    @payload = payload
  end

  def wheels
    6
  end
end

car = Car.new('Honda', 'Accord')
puts "My new vehicle is a #{car} with #{car.wheels} wheels."

motorcycle = Motorcycle.new('Kawasaki', 'Ninja')
puts "My new vehicle is a #{motorcycle} with #{motorcycle.wheels} wheels."

truck = Truck.new('Ford', 'F150', '150 ton')
puts "My new vehicle is a #{truck} with #{truck.wheels} wheels and #{truck.payload} payload."


