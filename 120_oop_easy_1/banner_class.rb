class Banner
  HR = '-'
  SPACE = ' '

  def initialize(message, width = message.length + 2)
    @message = message
    @width = width
    check_width
  end

  def check_width
    @width = @message.length + 2 if @width < (@message.length + 2) || 
      @width > 80
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    "+#{HR * @width}+"
  end

  def empty_line
    "|#{SPACE * @width}|"
  end

  def message_line
    side_space = SPACE * ((@width - @message.length) / 2)
    "|#{side_space}#{@message}#{side_space}|"
  end
end

banner1 = Banner.new('')
puts banner1
# +--+
# |  |
# |  |
# |  |
# +--+

banner2 = Banner.new('To boldly go where no one has gone before.', 80)
puts banner2
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
