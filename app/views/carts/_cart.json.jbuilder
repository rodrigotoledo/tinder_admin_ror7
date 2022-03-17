json.extract! cart, :id, :uuid, :name, :phone, :address, :scheduled_at, :created_at, :updated_at
json.url cart_url(cart, format: :json)
