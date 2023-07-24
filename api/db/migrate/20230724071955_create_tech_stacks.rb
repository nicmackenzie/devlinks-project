class CreateTechStacks < ActiveRecord::Migration[6.1]
  def change
    create_table :stacks do |t|
      t.string :stack_name
    end
  end
end
