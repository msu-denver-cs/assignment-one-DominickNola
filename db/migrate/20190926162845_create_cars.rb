class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :car_make
      t.string :car_model
      t.string :vin
      t.references :make

      t.timestamps
    end
  end
end
