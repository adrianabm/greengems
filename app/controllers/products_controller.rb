class ProductsController < ApplicationController
  #before_action :authenticate_user!, except: [:index, :show]
  load_and_authorize_resource


  def index
    @products = Product.all
    @products = Product.search(params[:search]) unless params[:search].blank?
    @order_item = current_order.order_items.new
  end

  def show
    @product = Product.find(params[:id])
    @photos = @product.photos
  end

#  def new
#    @product = Product.new
#  end

#  def create
#    @product = Product.build( product_params )

#    if @product.save
#      image_params.each do |image|
#      @product.photos.create(image: image)
#    end

#       redirect_to edit_product_path(@product), notice: "Product successfully created"
#    else
#       render :new
#    end
#  end

#  def edit
#    @product = Product.find(params[:id])
#    @photos = @product.photos
#  end

#  def update
#    @product = Product.find( params[:id] )

#    if @product.update( product_params )
#      image_params.each do |image|
#      @product.photos.create(image: image)
#    end

#       redirect_to product_path(@product), notice: "Product successfully updated"
#    else
#       render :edit
#    end
#  end

#  def destroy
#    @product = Product.find(params[:id])

#    @product.destroy

#    redirect_to products_path
#  end

  def atoz
    @products = Product.atoz
    @order_item = current_order.order_items.new
    render action: :index
  end

  def ztoa
    @products = Product.ztoa
    @order_item = current_order.order_items.new
    render action: :index
  end

  def priceup
    @products = Product.priceup
    @order_item = current_order.order_items.new
    render action: :index
  end

  def pricedown
    @products = Product.pricedown
    @order_item = current_order.order_items.new
    render action: :index
  end

  private
    def product_params
      params.require(:product).permit(:name, :description, :price, :active)
    end

    def image_params
      params[:images].present? ? params.require(:images) : []
    end

end
