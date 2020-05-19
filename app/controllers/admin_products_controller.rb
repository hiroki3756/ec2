class AdminProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to admin_products_path
  end

  def show
  end

  def edit
  end

  private
    def product_params
      params.require(:product).permit(:name, :explain, :notax_price)
    end
end
