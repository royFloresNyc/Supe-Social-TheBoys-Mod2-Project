class User < ApplicationRecord
    has_secure_password
    has_many :comments, dependent: :destroy
    has_many :user_supes
    has_many :supes, through: :user_supes
    has_many :user_events, dependent: :destroy 
    has_many :events, through: :user_events

  has_many :comments, dependent: :destroy
  has_many :user_supes, dependent: :destroy
  has_many :supes, through: :user_supes
  has_many :carts
  has_many :products, through: :carts
  has_many :user_events, dependent: :destroy
  has_many :events, through: :user_events

  validates_presence_of :username, :password
  validates_uniqueness_of :username

    def following?(supe)
        self.supes.include?(supe)
    end

    def attending?(event)
        self.events.include?(event)
    end 

    def feed
        Post.all.filter {|post| self.supes.include?(post.supe)}.reverse
    end 

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
