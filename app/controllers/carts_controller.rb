class CartsController < ApplicationController
before_action :authenticate_user!, except: [:show]

  def show
    @order_items = current_order.order_items
  end
end
