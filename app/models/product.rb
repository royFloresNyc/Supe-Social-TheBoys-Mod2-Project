class Product < ApplicationRecord
    validates_presence_of :name, :description, :price, :supe_id
    validates_uniqueness_of :name
    validates_numericality_of :price

    belongs_to :supe
    has_many :products_carts
    has_many :carts, through: :products_carts


    def self.hero_sort
        Product.all.sort_by { |product| product.supe }
    end
end
