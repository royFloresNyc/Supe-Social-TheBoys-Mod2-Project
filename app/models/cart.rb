class Cart < ApplicationRecord
    belongs_to :user
    has_many :cart_products, dependent: :destroy
    has_many :products, through: :cart_products 

    def has_items?
        self.products.count > 0
    end 
end
