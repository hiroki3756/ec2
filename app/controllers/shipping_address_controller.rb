class ShippingAddressController < ApplicationController
    def index
        @shipping_address = ShippingAddress.new
        @shipping_addresses = ShippingAddress.all
      end
    
      def create
        @shipping_address = ShippingAddress.new(shipping_address_params)
        @shipping_address.save
        redirect_to shipping_address_index_path
      end
    
      def edit
      end
    
      private
        def shipping_address_params
          params.require(:shipping_address).permit(:zipcode, :address, :name)
        end
end
