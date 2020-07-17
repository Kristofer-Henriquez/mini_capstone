class Api::OrdersController < ApplicationController

  before_action :authenticate_user

  def create
    @orders = Order.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: Product.find_by(id: params[:product_id]).price * params[:quantity].to_f,  
      tax: Product.find_by(id: params[:product_id]).tax * params[:quantity].to_f,
      total: Product.find_by(id: params[:product_id]).total * params[:quantity].to_f,
      user_id: current_user.id
    )
    @orders.save
    render "show.json.jb"
  end

end
