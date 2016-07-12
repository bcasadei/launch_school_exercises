class Banner
  HR = '-'
  SPACE = ' '

  def initialize(message)
    @message = message
    @hr_width = @message.length + 2
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    "+#{HR * @hr_width}+"
  end

  def empty_line
    "|#{SPACE * @hr_width}|"
  end

  def message_line
    "| #{@message} |"
  end
end

banner1 = Banner.new('')
puts banner1
# +--+
# |  |
# |  |
# |  |
# +--+

banner2 = Banner.new('To boldly go where no one has gone before.')
puts banner2
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
