class User < ApplicationRecord
    has_secure_password
    has_many :comments, dependent: :destroy
    has_many :usersupes
    has_many :supes, through: :usersupes


    validates_presence_of :username, :password
    validates_uniqueness_of :username

end
