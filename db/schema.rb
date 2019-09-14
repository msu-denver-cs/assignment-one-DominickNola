# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_14_233623) do

  create_table "invoice_parts", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.string "vin"
    t.integer "part_inventories_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["part_inventories_id"], name: "index_invoice_parts_on_part_inventories_id"
  end

  create_table "part_inventories", force: :cascade do |t|
    t.string "name"
    t.decimal "inventory"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "part_invoices", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "part_orders", force: :cascade do |t|
    t.string "name"
    t.decimal "inventory"
    t.integer "part_inventory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["part_inventory_id"], name: "index_part_orders_on_part_inventory_id"
  end

end
