json.product @products do |product|
  json.extract! product, :id, :artist, :description, :price, :image 
end

