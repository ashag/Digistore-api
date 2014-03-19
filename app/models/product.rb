class Product < ActiveRecord::Base
  has_many :item
  has_many :carts, through: :items
end
