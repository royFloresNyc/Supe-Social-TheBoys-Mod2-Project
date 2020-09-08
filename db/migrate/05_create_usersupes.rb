class CreateUsersupes < ActiveRecord::Migration[6.0]
  def change
    create_table :usersupes do |t|
      t.integer :user_id
      t.integer :supe_id

      t.timestamps
    end
  end
end
