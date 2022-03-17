class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy

  after_create do
    broadcast_append_to "carts", target: "carts", partial: "carts/cart", locals: {cart: self}
  end
  after_update do
    broadcast_update_to "carts", partial: "carts/cart", locals: {cart: self}
  end
  after_destroy_commit do
    broadcast_remove_to "carts", target: "cart_#{self.id}"
  end
end
