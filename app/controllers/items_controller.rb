class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
  end

  def create
    @item = Item.new(
      price: item_params[:price],
      quantity: item_params[:quantity],
      product_id: item_params[:product],
      cart_id: item_params[:cart])
    @item.save
    render :index
  end

  def update
    @item = Item.find(params[:id])
    @item.update(
      price: item_params[:price],
      quantity: item_params[:quantity])
    @item.save
    render :index
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    @item.save
    render :index
  end

  private
  def item_params
    params.require(:item).permit(:item, :id, :price, :quantity, :product, :cart)
  end

end