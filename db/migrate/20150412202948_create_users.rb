class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.string :image_url
      t.text :bio
      t.datetime :birthday
      t.string :location
      t.boolean :alive

      t.timestamps null: false
    end
  end
end
