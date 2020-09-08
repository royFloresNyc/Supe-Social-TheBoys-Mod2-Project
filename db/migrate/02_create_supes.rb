class CreateSupes < ActiveRecord::Migration[6.0]
  def change
    create_table :supes do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.text :bio
      t.string :powers
      t.string :image_url

      t.timestamps
    end
  end
end
