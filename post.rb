# A post has many comments and each comment belongs to exactly one post. Let's build the Post class so it has the following attributes: title, url, points, and item_id, corresponding to the title on Hacker News, the post's URL, the number of points the post currently has, and the post's Hacker News item ID, respectively.

class Post
  attr_reader :title, :url, :points, :item_id
  attr_accessor :comment_array
  def initialize(doc)
    @title = doc.title
    @url = doc.url
    @points = doc.css("span[class=score]").text
    # @item_id = doc.css()
    @comment_array = []
  end

  def comments(doc)
    doc.css('td .default .comment').each do |comment|
      user = comment.parent.css('.comhead a:first-child').text
      new_comment = Comment.new(user, comment.text)
      add_comment(new_comment)
    end
    byebug
    return @comment_array.each {|comment|}
  end

  def add_comment(new_comment)
    @comment_array << new_comment 
  end

end