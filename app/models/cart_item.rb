class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :product

  after_create do
    self.product.is_active = false
    self.product.save
  end

  before_destroy do
    self.product.is_active = true
    self.product.save
  end
end
