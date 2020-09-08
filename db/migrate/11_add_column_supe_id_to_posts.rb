class AddColumnSupeIdToPosts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :supe, null: false, foreign_key: true
  end
end
