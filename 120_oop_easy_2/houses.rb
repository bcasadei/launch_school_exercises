module Compare
  def <(other_house)
    price.to_i < other_house.price.to_i
  end

  def >(other_house)
    price.to_i > other_house.price.to_i
  end
end

class House
  include Compare

  attr_reader :price

  def initialize(price)
    @price = price
  end

end

home1 = House.new(100_000)
home2 = House.new(150_000)
puts "Home 1 is cheaper" if home1 < home2
puts "Home 2 is more expensive" if home2 > home1

# Home 1 is cheaper
# Home 2 is more expensive

# Modify the House class so that the above program will work. 
# You are permitted to define only one new method in House.

# Launch School solution uses Comparable mixin

# class House
#   attr_reader :price
#   include Comparable

#   def initialize(price)
#     @price = price
#   end

#   def <=>(other)
#     price <=> other.price
#   end
# end

