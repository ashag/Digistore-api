json.item @items do |item|
  json.extract! item, :id, :product_id, :cart_id, :price, :quantity 
end