class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :range_id
      t.float :price
      t.integer :quantity
      t.string :label
      t.string :description

      t.timestamps
    end
  end
end
