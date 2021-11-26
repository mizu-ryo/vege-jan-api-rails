class CreateVegetables < ActiveRecord::Migration[5.2]
  def change
    create_table :vegetables do |t|
      t.string :name
      t.integer :good_at
      t.integer :hp
      t.integer :power

      t.timestamps
    end
  end
end
