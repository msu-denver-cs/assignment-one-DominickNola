class PartInventory < ActiveRecord::Base
  has_many :invoice_parts
end
