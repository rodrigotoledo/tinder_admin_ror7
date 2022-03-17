class Api::SessionsController < ApplicationController
  protect_from_forgery with: :null_session
  def create
    cart = Cart.find_or_initialize_by(uuid: params[:uuid], status: :pending)
    cart.save
  end
end