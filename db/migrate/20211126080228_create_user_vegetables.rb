class CreateUserVegetables < ActiveRecord::Migration[5.2]
  def change
    create_table :user_vegetables do |t|
      t.integer :user_id
      t.integer :vegetable_id

      t.timestamps
    end
  end
end
