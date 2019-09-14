class CreateInvoiceParts < ActiveRecord::Migration[5.2]
  def change
    create_table :invoice_parts do |t|
      t.string :make
      t.string :model
      t.string :vin
      t.references :part_inventories, foreign_key: true

      t.timestamps
    end
  end
end
