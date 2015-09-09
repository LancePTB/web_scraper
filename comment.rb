#You'll have to design the Comment object yourself. What attributes and methods should it support and why?
#nokogiri xml element
class Comment

  attr_accessor :user, :comment

  def initialize(user, comment)
    @user = user
    @comment = comment
  end

end