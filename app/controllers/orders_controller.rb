class OrdersController < ApplicationController
  def new
    @order = Order.new
    @user = current_user 
end

def create
    @order = Order.new(order_params)
    @order.user_id =current_user.id
    @order.save
    redirect_to orders_complete_path
end

def index
  @orders = Order.all
  
end

def show
  @order = Order.find(params[:id])
end

def confirm
    @order = Order.new(order_params)
    @order2 = Order.find_by(id: params[:format])
    @ordered_products = OrderedProduct.all
    @order.billing_amount = 0
    @ordered_products.each do |ordered_product|
      @order.billing_amount += (ordered_product.product.notax_price.to_i * ordered_product.number.to_i)
    end
end

def complete
end


private
    def order_params
        params.require(:order).permit(:user_id, :delivery_address, :pay_method, :delivery_zipcode, :address_name, :deliver)
    end
end
