class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.string :devtype
      t.integer :experience
      t.string :image_url
    end
  end
end
