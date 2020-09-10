class Product < ApplicationRecord
    validates_presence_of :name, :description, :price
    validates_uniqueness_of :name
    validates_numericality_of :price

    has_many :carts
    has_many :users, through: :carts


    def self.product_sort
        Product.all.sort_by { |product| product.price }
    end
end
