# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_18_234207) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dailylogs", force: :cascade do |t|
    t.date "log_date"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_dailylogs_on_user_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.integer "serving"
    t.string "size"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "weightInGrams"
  end

  create_table "nutrients", force: :cascade do |t|
    t.string "ntype"
    t.string "nname"
    t.integer "nvalue"
    t.string "nunit"
    t.bigint "food_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_id"], name: "index_nutrients_on_food_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "dob"
    t.float "height"
    t.float "weight"
    t.float "bmi"
    t.string "gender"
  end

  add_foreign_key "dailylogs", "users"
  add_foreign_key "nutrients", "foods"
end
