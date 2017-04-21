class PagesController < ApplicationController
before_action :set_post, only: [:show, :edit, :update, :destroy]
  def index
    @post = Post.new
    @posts = Post.all
    @comment = Comment.new

  end

  def new
    @post = Post.new
    @post = current_post.images
    @post.images = current_post
    @post = @post.images
  end





  def post_params
    params.require(:post).permit(:item_name, :item_description, :supplier_name, :supplier_description, :user_id, {images: []})
  end


end
