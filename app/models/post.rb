class Post < ApplicationRecord
    belongs_to :supe 
    has_one_attached :post_file 
    has_many :comments

    def has_media?
        self.post_file.attached?
    end 

    def has_image?
        self.post_file.content_type.include?("image")
    end 
end
