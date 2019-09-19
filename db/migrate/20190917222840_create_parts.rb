class CreateParts < ActiveRecord::Migration[5.2]
  def change
    create_table :parts do |t|
      t.string :name
      t.decimal :inventory

      t.timestamps
    end
  end
end
