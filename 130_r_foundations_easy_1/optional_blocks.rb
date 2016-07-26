def compute(num)
  if block_given?
    yield(num)
  else 
    "What do you want me to do with this #{num}?"
  end
end


p compute(7) { |num| num + 5 + 3 } # => 15
p compute(8) { |num| ('a' + 'b') * num } # => "abababababababab"
p compute(9) # => "What do you want me to do with this 9?"