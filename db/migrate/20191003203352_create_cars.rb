class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :car_make
      t.string :car_model
      t.string :vin_number
      t.references :make, foreign_key: true

      t.timestamps
    end
  end
end
