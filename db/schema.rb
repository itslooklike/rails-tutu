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

ActiveRecord::Schema.define(version: 2019_05_06_083207) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "railway_stations", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "railway_stations_routes", force: :cascade do |t|
    t.bigint "railway_station_id"
    t.bigint "route_id"
    t.index ["railway_station_id"], name: "index_railway_stations_routes_on_railway_station_id"
    t.index ["route_id"], name: "index_railway_stations_routes_on_route_id"
  end

  create_table "routes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tikets", force: :cascade do |t|
    t.bigint "train_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["train_id"], name: "index_tikets_on_train_id"
    t.index ["user_id"], name: "index_tikets_on_user_id"
  end

  create_table "trains", force: :cascade do |t|
    t.string "number"
    t.bigint "railway_station_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "route_id"
    t.index ["railway_station_id"], name: "index_trains_on_railway_station_id"
    t.index ["route_id"], name: "index_trains_on_route_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wagon_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wagons", force: :cascade do |t|
    t.bigint "train_id"
    t.bigint "wagon_type_id"
    t.integer "seats_top"
    t.integer "seats_bottom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["train_id"], name: "index_wagons_on_train_id"
    t.index ["wagon_type_id"], name: "index_wagons_on_wagon_type_id"
  end

  add_foreign_key "railway_stations_routes", "railway_stations"
  add_foreign_key "railway_stations_routes", "routes"
  add_foreign_key "tikets", "trains"
  add_foreign_key "tikets", "users"
  add_foreign_key "trains", "railway_stations"
  add_foreign_key "trains", "routes"
  add_foreign_key "wagons", "trains"
  add_foreign_key "wagons", "wagon_types"
end
