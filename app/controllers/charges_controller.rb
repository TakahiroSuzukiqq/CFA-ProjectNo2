class ChargesController < ApplicationController
	def new
	end

	def create
	  # Amount in cents
	  @amount = 500  #引き落とす金額
        #Stripe から帰ってきた情報を取得
	  customer = Stripe::Customer.create(
	    :email => params[:stripeEmail], #receive email without 暗号化
	    :source  => params[:stripeToken] #ランダム文字列
	  )

    #決済
	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => @amount,
	    :description => 'Rails Stripe customer',
	    :currency    => 'usd'
	  )

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to new_charge_path
	end
end
