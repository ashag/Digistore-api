json.product @products do |product|
  json.extract! product, :artist, :description, :price, :image 
end

