class Product < ApplicationRecord
    belongs_to :admin, optional: true
    has_many :ordered_product, dependent: :destroy
    attachment :image
end
