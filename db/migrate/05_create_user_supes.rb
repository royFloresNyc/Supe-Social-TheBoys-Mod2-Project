class CreateUserSupes < ActiveRecord::Migration[6.0]
  def change
    create_table :user_supes do |t|
      t.integer :user_id
      t.integer :supe_id

      t.timestamps
    end
  end
end
