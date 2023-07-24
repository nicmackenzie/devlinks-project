class CreateUserLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :userlinks do |t|
      t.string :name
      t.integer :user_id
      t.string :link_url
    end
  end
end
