ProductApi::Application.routes.draw do

  defaults format: :json do
    # root to: 'products#index'
    resources :carts, only: [:show, :create, :update, :destroy]
    resources :orders, only: [:show, :create]
    resources :items, only: [:index, :show, :update, :create, :destroy]
    resources :products, only: [:index, :show, :create, :update, :destroy]

  end




end
