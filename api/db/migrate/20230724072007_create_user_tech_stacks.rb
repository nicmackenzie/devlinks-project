class CreateUserTechStacks < ActiveRecord::Migration[6.1]
  def change
    create_table :userstacks do |t|
      t.integer :user_id
      t.integer :stack_id
    end
  end
end
