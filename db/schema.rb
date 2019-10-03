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

ActiveRecord::Schema.define(version: 2019_10_03_203509) do

  create_table "car_parts", force: :cascade do |t|
    t.integer "car_id"
    t.integer "part_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_car_parts_on_car_id"
    t.index ["part_id"], name: "index_car_parts_on_part_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "car_make"
    t.string "car_model"
    t.string "vin_number"
    t.integer "make_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["make_id"], name: "index_cars_on_make_id"
  end

  create_table "makes", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parts", force: :cascade do |t|
    t.string "part_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
