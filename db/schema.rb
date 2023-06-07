# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_07_125602) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "compartments", force: :cascade do |t|
    t.string "width"
    t.string "garden_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gardens", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "length"
    t.string "width"
    t.string "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "implantations", force: :cascade do |t|
    t.bigint "compartment_id", null: false
    t.bigint "vegetable_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["compartment_id"], name: "index_implantations_on_compartment_id"
    t.index ["vegetable_id"], name: "index_implantations_on_vegetable_id"
  end

  create_table "synergies", force: :cascade do |t|
    t.integer "first_vegetable_id"
    t.integer "second_vegetable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vegetables", force: :cascade do |t|
    t.string "name"
    t.string "variety"
    t.string "family"
    t.float "min_temp"
    t.float "max_temp"
    t.float "atmospheric_humidity"
    t.float "minimum_precipitation"
    t.float "maximum_precipitation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "implantations", "compartments"
  add_foreign_key "implantations", "vegetables"
end
