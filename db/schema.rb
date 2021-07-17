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

ActiveRecord::Schema.define(version: 2021_07_17_012736) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "interests", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "tie_id", null: false
    t.text "content"
    t.boolean "seen", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tie_id"], name: "index_messages_on_tie_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "referrals", force: :cascade do |t|
    t.text "reason"
    t.boolean "requested"
    t.boolean "reject"
    t.text "message_from_to_user"
    t.boolean "seen_by_to_user", default: false
    t.boolean "seen_by_recommended", default: false
    t.bigint "referrer_user_id"
    t.bigint "recommended_user_id"
    t.bigint "to_user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recommended_user_id"], name: "index_referrals_on_recommended_user_id"
    t.index ["referrer_user_id"], name: "index_referrals_on_referrer_user_id"
    t.index ["to_user_id"], name: "index_referrals_on_to_user_id"
  end

  create_table "ties", force: :cascade do |t|
    t.bigint "user1_id"
    t.bigint "user2_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user1_id"], name: "index_ties_on_user1_id"
    t.index ["user2_id"], name: "index_ties_on_user2_id"
  end

  create_table "user_interests", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "interest_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["interest_id"], name: "index_user_interests_on_interest_id"
    t.index ["user_id"], name: "index_user_interests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "tie_code"
    t.text "bio"
    t.text "summary"
    t.string "status"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "messages", "ties", column: "tie_id"
  add_foreign_key "messages", "users"
  add_foreign_key "referrals", "users", column: "recommended_user_id"
  add_foreign_key "referrals", "users", column: "referrer_user_id"
  add_foreign_key "referrals", "users", column: "to_user_id"
  add_foreign_key "ties", "users", column: "user1_id"
  add_foreign_key "ties", "users", column: "user2_id"
  add_foreign_key "user_interests", "interests"
  add_foreign_key "user_interests", "users"
end
