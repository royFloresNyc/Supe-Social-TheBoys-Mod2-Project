class Post < ApplicationRecord
    belongs_to :supe 
    has_one_attached :post_file 
end
