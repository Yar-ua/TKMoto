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

ActiveRecord::Schema.define(version: 20160920181422) do

  create_table "bikes", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "year"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fuel_stata", force: :cascade do |t|
    t.integer  "bike_id"
    t.float    "odo"
    t.float    "odo_delta"
    t.float    "refueling"
    t.float    "price_fuel"
    t.string   "fuel_station"
    t.string   "fuel_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["bike_id"], name: "index_fuel_stata_on_bike_id"
  end

end
