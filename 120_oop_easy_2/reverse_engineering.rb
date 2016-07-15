class Transform

  def initialize(str)
    @str = str
  end

  def uppercase # instance method
    @str.upcase
  end

  def self.lowercase(str) # class method or "singleton method"
    str.downcase
  end
end

my_data = Transform.new('abc')
puts my_data.uppercase # calls instance method uppercase
puts Transform.lowercase('XYZ') # calls class method lowercase

# ABC
# xyz

# A class method is also, somewhat confusingly, called a 
# "singleton method" (the term is used in other contexts 
# as well).
