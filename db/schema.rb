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

ActiveRecord::Schema.define(version: 2018_05_26_141135) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "phone"
    t.bigint "company_id"
    t.bigint "vehicule_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_drivers_on_company_id"
    t.index ["vehicule_id"], name: "index_drivers_on_vehicule_id"
  end

  create_table "models", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicules", force: :cascade do |t|
    t.string "registration"
    t.float "km"
    t.bigint "model_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "driver_id"
    t.index ["driver_id"], name: "index_vehicules_on_driver_id"
    t.index ["model_id"], name: "index_vehicules_on_model_id"
  end

  add_foreign_key "drivers", "companies"
  add_foreign_key "drivers", "vehicules"
  add_foreign_key "vehicules", "drivers"
  add_foreign_key "vehicules", "models"
end
