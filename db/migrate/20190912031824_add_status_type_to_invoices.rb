class AddStatusTypeToInvoices < ActiveRecord::Migration[5.2]
  def change
    add_column :mr_car_parts, :status_type, :string
  end
end
