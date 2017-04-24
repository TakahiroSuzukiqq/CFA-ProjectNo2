class PagesController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.all
    @comment = Comment.new
    # @post = Post.new.images
  end

  def create

  end

  def post_params
    params.require(:post).permit(:item_name, {images: []})
  end

  def post_params
    params.require(:post).permit(:item_name, :item_description, :supplier_name, :supplier_description, :user_id, {images: []})
  end

end
