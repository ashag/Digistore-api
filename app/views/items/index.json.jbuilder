json.item @items do |item|
  it = Item.find(item)
  json.id item.id 
  json.product item.product_id
  json.cart item.cart_id
  json.price item.price
  json.quantity item.quantity

end