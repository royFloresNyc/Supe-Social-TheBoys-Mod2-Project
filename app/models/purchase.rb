class Purchase < ApplicationRecord
  belongs_to :cart

  def to_param
    uuid
  end 
end
