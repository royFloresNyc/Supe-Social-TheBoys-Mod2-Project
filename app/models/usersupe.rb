class UserSupe < ApplicationRecord
    belongs_to :user_id
    belongs_to :supe_id
end
