class OrdersController < ApplicationController
  
  def create
    @order = Order.new(
      cart_id: params[:cart],
      customerName: params[:customerName],
      email: params[:email],
      total: params[:total],
      cc_info: params[:cc_info],
      cc_cvv: params[:cc_cvv],
      cc_exp: params[:cc_exp],
      zip_code: params[:zip_code]
    )
    @order.save
    render :show
  end

  def show
    @order = Order.find(params[:id])
  end

  private
  def order_items
    params.require(:order).permit(:id, :cart, :customerName, :email, :total, :cc_info, :cc_exp, :cc_cvv, :zip_code)
  end
end
