class CheckoutController < ApplicationController
  before_action :authenticate_user!

  def index
    @products = Product.all
    @order_items = current_order.order_items
  end
end

def show
end
