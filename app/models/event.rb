class Event < ApplicationRecord
    belongs_to :supe
    has_many :user_events, dependent: :destroy
    has_many :users, through: :user_events

    validates :title, :supe_id, :date, :cost, :location, presence: true
    validates :cost, numericality: {only_integers: true}
end
