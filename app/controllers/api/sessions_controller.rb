class Api::SessionsController < ActionController::API
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token
  def create
    cart = Cart.find_or_initialize_by(uuid: params[:uuid], status: :pending)
    cart.save
  end
end