json.cart do
  json.id @cart.id
  items_array = []
  @cart.items.each do |item|
    items_array << item.id
  end
  json.items items_array
end