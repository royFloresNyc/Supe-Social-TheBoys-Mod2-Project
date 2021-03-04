class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.integer :cart_id, null: false, foreign_key: true
      t.string :uuid
      t.integer :amount
      t.string :currency
      t.string :card 
      t.string :customer_name
      t.string :customer_email
      t.string :shipping_address

      t.timestamps
    end
  end
end
