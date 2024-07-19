class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :nickname
      t.string :email
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
