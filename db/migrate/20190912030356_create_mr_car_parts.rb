class CreateMrCarParts < ActiveRecord::Migration[5.2]
  def change
    create_table :mr_car_parts do |t|
      t.string :Make
      t.string :Model
      t.decimal :price

      t.timestamps
    end
  end
end
