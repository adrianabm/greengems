class ProductsController < ApplicationController
  def index
    @products = Product.all
    @products = Product.search(params[:search]) unless params[:search].blank?
    @order_item = current_order.order_items.new
  end

  def show
    @product = Product.find(params[:id])
  end


  private
    def product_params
      params.require(:product).permit(:name, :description, :price, :active)
    end

end
