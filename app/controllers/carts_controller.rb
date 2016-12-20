class CartsController < ApplicationController
before_action :authenticate_user!, except: [:show]

  def show
    @order_items = current_order.order_items
  end

  def add_item(product_id)
    item = items.where('product_id = ?', product_id).first
    if item
      # increase the quantity of product in cart
      item.quantity + 1
      save
    else
      # product does not exist in cart
      cart.items << Item.new(product_id: product_id, quantity: 1)
    end
    save
  end

  def add_to_cart
    current_cart.add_item(params[:product_id])
    # redirect to shopping cart or whereever
  end
end
