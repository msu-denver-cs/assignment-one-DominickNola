class CreateMakes < ActiveRecord::Migration[5.2]
  def change
    create_table :makes do |t|
      t.string :name
      t.string :country

      t.timestamps
    end
  end
end
