json.extract! order, :customerName, :email, :total, :status, :cc_info, :cc_cvv, :cc_exp, :zip_code, :transaction
json.cart @order.cart_id 

