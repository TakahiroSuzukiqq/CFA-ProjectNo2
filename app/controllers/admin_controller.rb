class AdminController < ApplicationController
  before_action :authorize_user, only: :index
  before_action :set_supplier, only: [:show, :edit, :update, :destroy]

  def index
    @supplier = Supplier.new
    @suppliers = Supplier.all
    @user = User.new
    @usera = User.all
  end
  
    private

  def authorize_user
    if current_user.user_type != 'admin'
      redirect_to root_path, notice: 'Login as User'
    end
  end


  def set_supplier
    @supplier = Supplier.find(params[:id])
  end
  def supplier_params
    params.require(:supplier).permit(:supplier_name, :supplier_phone_number, :company_number, :verified)
  end

end
