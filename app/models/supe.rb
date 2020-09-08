class Supe < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :events, dependent: :destroy
end
