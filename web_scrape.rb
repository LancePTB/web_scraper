# Instantiates a Post object
# Parses the Hacker News HTML
# Creates a new Comment object for each comment in the HTML, adding it to the Post object in (1)

require 'rubygems'
require 'nokogiri'
require 'byebug'
require_relative 'post'
require_relative 'comment'


doc = Nokogiri::HTML(File.open('post.html'))
post = Post.new(doc)

puts post.comments(doc)


#post.add_comment(Comment.new)

# puts doc.search('.subtext > span:first-child').map { |span| span.inner_text}
# puts doc.search('.subtext > a:nth-child(3)').map {|link| link['href'] }
# puts doc.search('.title > a:first-child').map { |link| link.inner_text}
# puts doc.search('.title > a:first-child').map { |link| link['href']}
# puts doc.search('.comment > font:first-child').map { |font| font.inner_text}