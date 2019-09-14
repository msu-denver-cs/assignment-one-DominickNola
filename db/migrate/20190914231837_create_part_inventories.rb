class CreatePartInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :part_inventories do |t|
      t.string :name
      t.decimal :inventory

      t.timestamps
    end
  end
end
