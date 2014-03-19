ProductApi::Application.routes.draw do


  get "carts/index"
  get "carts/create"
  get "carts/update"
  get "carts/destroy"
  get "orders/index"
  get "orders/create"
  defaults format: :json do
    root to: 'products#index'
    get 'products'      => 'products#index'
  end




end
