class Api::CartsController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :set_cart

  def index
    render json: @cart.cart_items.as_json(include: :product)
  end

  def create
    cart_item = @cart.cart_items.where(product_id: params[:product_id]).first
    if cart_item && params[:remove]
      cart_item.destroy
    elsif !cart_item
      cart_item = @cart.cart_items.build(product_id: params[:product_id])
      @cart.save
    end
    head :ok
  end

  def finish
    @cart.name = params[:name]
    @cart.phone = params[:phone]
    @cart.address = params[:address]
    @cart.scheduled_at = params[:scheduled_at]
    @cart.status = :to_delivery
    @cart.save
    head :ok
  end

  private
  def set_cart
    @cart = Cart.find_or_initialize_by(uuid: params[:uuid], status: :pending)
  end
end