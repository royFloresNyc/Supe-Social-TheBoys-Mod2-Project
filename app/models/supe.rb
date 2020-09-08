class Supe < ApplicationRecord

    validates_presence_of :name, :bio, :powers
    validates_uniqueness_of :name


    has_many :usersupes
    has_many :users, through: :usersupes
    has_many :products
    has_many :events
end
