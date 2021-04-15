class Category < ApplicationRecord
  has_many :product_catergories
  has_many :products, through: :product_catergories
end
