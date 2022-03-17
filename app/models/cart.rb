class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  validates :name, :phone, :address, :scheduled_at, presence: true
end
