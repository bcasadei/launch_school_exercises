class Book
  attr_accessor :author, :title

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new
book.author = "Neil Stephenson"
book.title = "Snow Crash"
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)

# Expected output:
# The author of "Snow Crash" is Neil Stephenson.
# book = "Snow Crash", by Neil Stephenson.

# What do you think of this way of creating and initializing Book objects? 
# (The two steps are separate.) Would it be better to create and initialize 
# at the same time like in the previous exercise? What potential problems, 
# if any, are introduced by separating the steps?

# In the previous example you can limit access to the variable by only using
# attr_reader keeping it encapsulated. In the previous example it's easy to 
# change attr_reader to attr_accessor giving access to the variables. In this
# example you can't just change attr_accessor to attr_reader or you wouldn't be 
# able to initialize the author and title variables.