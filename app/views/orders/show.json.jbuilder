json.order do
  json.cart @order.cart
  json.id @order.id
  json.artist @order.customerName
  json.description @order.email
  json.price @order.total
  json.image @order.status
  json.cc_info @order.cc_info
  json.cc_cvv @order.cc_cvv
  json.cc_exp @order.cc_exp
  json.zip_code @order.zip_code
end
