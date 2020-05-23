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

ActiveRecord::Schema.define(version: 2020_05_18_231107) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dailylogs", force: :cascade do |t|
    t.date "log_date"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_dailylogs_on_user_id"
  end

  create_table "dris", force: :cascade do |t|
    t.integer "calories", default: 2000
    t.integer "fat", default: 78
    t.integer "sodium", default: 2300
    t.integer "potassium", default: 4700
    t.integer "carbohydrates", default: 275
    t.integer "protein", default: 15
    t.integer "vitaminA", default: 900
    t.integer "vitaminC", default: 90
    t.integer "calcium", default: 1300
    t.integer "iron", default: 18
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.decimal "serving"
    t.string "size"
    t.float "weight"
    t.float "calories", default: 0.0
    t.float "fat", default: 0.0
    t.float "sodium", default: 0.0
    t.float "potassium", default: 0.0
    t.float "carbohydrates", default: 0.0
    t.float "protein", default: 0.0
    t.float "vitaminA", default: 0.0
    t.float "vitaminC", default: 0.0
    t.float "calcium", default: 0.0
    t.float "iron", default: 0.0
    t.bigint "dailylog_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dailylog_id"], name: "index_foods_on_dailylog_id"
  end

  create_table "nutrientprofiles", force: :cascade do |t|
    t.string "name"
    t.decimal "serving"
    t.string "size"
    t.float "weight"
    t.float "calories", default: 0.0
    t.float "fat", default: 0.0
    t.float "sodium", default: 0.0
    t.float "potassium", default: 0.0
    t.float "carbohydrates", default: 0.0
    t.float "protein", default: 0.0
    t.float "vitaminA", default: 0.0
    t.float "vitaminC", default: 0.0
    t.float "calcium", default: 0.0
    t.float "iron", default: 0.0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.bigint "dri_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dri_id"], name: "index_users_on_dri_id"
  end

  add_foreign_key "dailylogs", "users"
  add_foreign_key "foods", "dailylogs"
  add_foreign_key "users", "dris"
end
