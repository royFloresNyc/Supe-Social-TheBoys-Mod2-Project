class User < ApplicationRecord
  has_secure_password

  has_many :comments, dependent: :destroy
  has_many :usersupes
  has_many :supes, through: :usersupes
  has_many :carts
  has_many :products, through: :carts

  validates_presence_of :username, :password
  validates_uniqueness_of :username


  enum role: [:member, :admin]
  after_initialize do
    if self.new_record?
      self.role ||= :member
    end
  end


  def cart
    self.carts.each do |product|
      product
    end
  end
end
