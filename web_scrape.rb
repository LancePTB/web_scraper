# Instantiates a Post object
# Parses the Hacker News HTML
# Creates a new Comment object for each comment in the HTML, adding it to the Post object in (1)

require 'rubygems'
require 'nokogiri'
require 'byebug'
require 'open-uri'
require 'colorize'
require_relative 'post'
require_relative 'comment'

url = ARGV[0]
doc = Nokogiri::HTML(open(url))
post = Post.new(doc)

puts "Post title: " + post.title.to_s
puts "Number of comments: " + post.comments(doc).count.to_s
