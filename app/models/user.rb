class User < ApplicationRecord
  has_secure_password

  has_many :comments, dependent: :destroy
  has_many :user_supes, dependent: :destroy
  has_many :supes, through: :user_supes
  has_one :cart
  has_many :user_events, dependent: :destroy
  has_many :events, through: :user_events

  validates_presence_of :username, :password
  validates_uniqueness_of :username


  enum role: [:member, :admin]
  after_initialize do
    if self.new_record?
      self.role ||= :member
    end
  end

  def self.cart
    self.carts.each do |product|
        product
    end
  end

  def self.recent_comments
    recent_comments = self.comments.sort_by { |comment| comment.created_at }.reverse
    recent_comments.limit(3)
  end
end