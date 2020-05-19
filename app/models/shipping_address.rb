class ShippingAddress < ApplicationRecord
    belongs_to :order
    def abc
        zipcode + address + name
    end
end
