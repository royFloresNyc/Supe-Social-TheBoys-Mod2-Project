class Supe < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :events, dependent: :destroy

    validates_presence_of :name, :bio, :powers
    validates_uniqueness_of :name


    has_many :user_supes, dependent: :destroy
    has_many :users, through: :user_supes, dependent: :destroy
    has_many :products, dependent: :destroy
    has_many :events, dependent: :destroy
end
