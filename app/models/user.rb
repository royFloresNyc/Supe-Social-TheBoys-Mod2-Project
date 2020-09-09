class User < ApplicationRecord
    has_secure_password
    has_many :comments, dependent: :destroy
    has_many :user_supes
    has_many :supes, through: :user_supes


    validates_presence_of :username, :password
    validates_uniqueness_of :username

    def following?(supe)
        self.supes.include?(supe)
    end
end
