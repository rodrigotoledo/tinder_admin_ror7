class Product < ApplicationRecord

  validates :name, :description, :size, :photo, presence: true

  after_create do
    broadcast_append_to "products", target: "products", partial: "products/product", locals: {product: self}
  end
  after_update do
    broadcast_update_to "products", partial: "products/product", locals: {product: self}
  end
  after_destroy_commit do
    broadcast_remove_to "products", target: "product_#{self.id}"
  end
end
