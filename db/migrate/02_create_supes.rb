class CreateSupes < ActiveRecord::Migration[6.0]
  def change
    create_table :supes do |t|
      t.string :name
      t.string :password_digest
      t.text :bio
      t.string :powers
      t.string :image_url

      t.timestamps
    end
  end
end
