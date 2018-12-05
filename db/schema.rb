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

ActiveRecord::Schema.define(version: 20181204213002) do

  create_table "drivers", force: :cascade do |t|
    t.string  "name"
    t.integer "points"
    t.integer "wins"
    t.integer "driver_weight"
    t.string  "driver_height"
  end

  create_table "race_cars", force: :cascade do |t|
    t.string  "brand"
    t.string  "chassis"
    t.integer "weight"
    t.integer "cost"
    t.integer "horsepower"
    t.integer "driver_id"
    t.integer "race_id"
    t.index ["driver_id"], name: "index_race_cars_on_driver_id"
    t.index ["race_id"], name: "index_race_cars_on_race_id"
  end

  create_table "races", force: :cascade do |t|
    t.string   "location"
    t.datetime "date"
    t.integer  "total_laps"
    t.integer  "total_distance"
  end

end
