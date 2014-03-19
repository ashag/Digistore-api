json.product do
  json.id @product.id
  json.artist @product.artist
  json.description @product.description
  json.price @product.price
  json.image @product.image 
end