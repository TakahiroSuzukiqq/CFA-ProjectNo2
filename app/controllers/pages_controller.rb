class PagesController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.all
    @comment = Comment.new
    # @post_images = @post.images
  end

  def post_params
    params.require(:post).permit(:item_name, {images: []})
  end

  def comment_params
    params.require(:comment).permit(:title, :user_id)
  end

end
