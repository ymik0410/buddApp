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

ActiveRecord::Schema.define(version: 2021_05_04_184910) do

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

  create_table "buddyships", force: :cascade do |t|
    t.bigint "user1_id"
    t.bigint "user2_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user1_id"], name: "index_buddyships_on_user1_id"
    t.index ["user2_id"], name: "index_buddyships_on_user2_id"
  end

  create_table "daily_goals", force: :cascade do |t|
    t.text "name"
    t.boolean "done"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_daily_goals_on_user_id"
  end

  create_table "goals", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "histories", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.bigint "goal_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["goal_id"], name: "index_histories_on_goal_id"
    t.index ["user_id"], name: "index_histories_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.bigint "buddyship_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["buddyship_id"], name: "index_messages_on_buddyship_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "mini_goals", force: :cascade do |t|
    t.text "name"
    t.boolean "done"
    t.string "user"
    t.string "references"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "introduction"
    t.string "goal_description"
    t.string "photo"
    t.string "gender"
    t.date "date_of_birth"
    t.string "country"
    t.string "username"
    t.string "language"
    t.integer "streak", default: 0
    t.integer "longest_streak", default: 0
    t.date "last_activity", default: "2021-01-25"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "buddyships", "users", column: "user1_id"
  add_foreign_key "buddyships", "users", column: "user2_id"
  add_foreign_key "daily_goals", "users"
  add_foreign_key "histories", "goals"
  add_foreign_key "histories", "users"
  add_foreign_key "messages", "buddyships"
  add_foreign_key "messages", "users"
end
