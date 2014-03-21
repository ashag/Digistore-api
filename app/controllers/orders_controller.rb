class OrdersController < ApplicationController
  
  def create
    @order = Order.new(
      cart_id: params[:order][:cart],
      customerName: params[:order][:customerName],
      email: params[:order][:email],
      total: params[:order][:total],
      cc_info: params[:order][:cc_info],
      cc_cvv: params[:order][:cc_cvv],
      cc_exp: params[:order][:cc_exp],
      zip_code: params[:order][:zip_code],
      status: params[:order][:status]
    )
    @order.save
    @order.confirmation_email
    render :show
  end

  def show
    @order = Order.find(params[:id])
  end

  private
  def items
    params.require(:order).permit(:order, :cart, :customerName, :email, :total, :cc_info, :status, :cc_exp, :cc_cvv, :zip_code)
  end
end
