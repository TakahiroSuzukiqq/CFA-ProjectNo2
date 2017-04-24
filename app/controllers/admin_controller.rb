class AdminController < ApplicationController
  before_action :authorize_user, only: :index
  before_action :set_supplier, only: [:show, :edit, :update, :destroy]
  before_action :set_current_supplier, only: [:show, :edit, :update, :destroy, :create]
  before_action :set_current_user, only: [:show, :edit, :update, :destroy, :create]


  def index
    @supplier = Supplier.new
    @suppliers = Supplier.all
    @user = User.new
    @usera = User.all
    @post = Post.new
    @posts = Post.all
  end

    private

  def authorize_user
    if current_user.has_role? :admin
      redirect_to root_path, notice: 'Login as User'
    end
  end


  def set_supplier
    @supplier = Supplier.find(params[:id])
  end
  def supplier_params
    params.require(:supplier).permit(:supplier_name, :supplier_phone_number, :company_number, :verified)
  end


  def set_current_supplier
    @user = current_user
  end
  def post_params
    params.require(:post).permit(:item_name, :item_description, :supplier_name, :supplier_description, :user_id, {images: []})
  end


  def set_current_user
    @user = current_user
  end
  def comment_params
    params.require(:comment).permit(:user_id, :title, :content, :post_id, :user_name, {images: []})
  end


end
