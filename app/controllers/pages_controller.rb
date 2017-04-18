class PagesController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.all
    @comment = Comment.new
  end
end
