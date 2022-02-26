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

ActiveRecord::Schema.define(version: 2022_02_26_103208) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "menus", force: :cascade do |t|
    t.string "name"
    t.integer "number_of_box"
    t.bigint "shop_id", null: false
    t.bigint "rental_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "price"
    t.string "description"
    t.index ["rental_id"], name: "index_menus_on_rental_id"
    t.index ["shop_id"], name: "index_menus_on_shop_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "rating"
    t.bigint "shop_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["shop_id"], name: "index_ratings_on_shop_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "rentals", force: :cascade do |t|
    t.date "rental_time_start"
    t.date "rental_time_end"
    t.integer "status"
    t.bigint "shop_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "max_capacity"
    t.integer "total_of_box"
    t.index ["shop_id"], name: "index_rentals_on_shop_id"
    t.index ["user_id"], name: "index_rentals_on_user_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "description"
    t.string "mobile"
    t.string "email"
    t.integer "category"
    t.string "merchant_picture"
    t.date "opening_hours"
    t.decimal "average_rate"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "closing_hours"
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_shops_on_user_id"
  end

  create_table "slot_hours", force: :cascade do |t|
    t.integer "opening_hour"
    t.integer "closing_hour"
    t.string "day_of_the_week"
    t.bigint "shop_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["shop_id"], name: "index_slot_hours_on_shop_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "last_name"
    t.string "address"
    t.string "mobile"
    t.string "image_url"
    t.integer "status"
    t.boolean "shop"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "menus", "rentals"
  add_foreign_key "menus", "shops"
  add_foreign_key "ratings", "shops"
  add_foreign_key "ratings", "users"
  add_foreign_key "rentals", "shops"
  add_foreign_key "rentals", "users"
  add_foreign_key "shops", "users"
  add_foreign_key "slot_hours", "shops"
end
