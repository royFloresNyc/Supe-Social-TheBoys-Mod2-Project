class Product < ApplicationRecord
    validates_presence_of :name, :description, :price, :supe_id
    validates_uniqueness_of :name
    validates_numericality_of :price

    belongs_to :supe
    has_many :carts
    has_many :users, through: :cart


    def sort_by_hero
        Product.all.sort_by { |product| product.supe }
    end
end
