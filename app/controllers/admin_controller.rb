class AdminController < ApplicationController
  before_action :authorize_user, only: :index
  def index
    @uers = User.all
    @suppliers = Supplier.all
    @posts = Post.all
    @comments = Comment.all
  end

    private

  def authorize_user
    if current_user.user_type != 'admin'
      redirect_to root_path, notice: 'Access DENIED'
  end

end
