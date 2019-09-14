json.extract! invoice_part, :id, :make, :model, :vin, :part_inventories_id, :created_at, :updated_at
json.url invoice_part_url(invoice_part, format: :json)
