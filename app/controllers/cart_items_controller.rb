class CartItemsController < ApplicationController
  def index
  end

  def add_item
    @cart_item = CartItem.new(cart_item_params)
    @user_id = current_user
    @product_id = 
    @cart_item.save
    redirect_to cart_items_index_path
  end



  private
    def cart_item_params
      params.require(:cart_items).permit(user_id, :product_id, :number)
    end
end
