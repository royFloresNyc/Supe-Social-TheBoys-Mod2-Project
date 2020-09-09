class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.integer :user_id
      t.integer :products_carts_id

      t.timestamps
    end
  end
end
