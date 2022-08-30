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

ActiveRecord::Schema[7.0].define(version: 2022_08_30_124538) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "matched_swipes", force: :cascade do |t|
    t.bigint "match_id", null: false
    t.bigint "swipe_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_matched_swipes_on_match_id"
    t.index ["swipe_id"], name: "index_matched_swipes_on_swipe_id"
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "user1_id", null: false
    t.bigint "user2_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user1_id"], name: "index_matches_on_user1_id"
    t.index ["user2_id"], name: "index_matches_on_user2_id"
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.text "content"
    t.bigint "match_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_messages_on_match_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "pets", force: :cascade do |t|
    t.string "race"
    t.integer "age"
    t.string "sexe"
    t.text "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_pets_on_user_id"
  end

  create_table "swipes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "pet_id", null: false
    t.boolean "liked"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pet_id"], name: "index_swipes_on_pet_id"
    t.index ["user_id"], name: "index_swipes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.text "description"
    t.integer "age"
    t.string "address"
    t.string "gender"
    t.string "orientation"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "matched_swipes", "matches"
  add_foreign_key "matched_swipes", "swipes"
  add_foreign_key "matches", "users", column: "user1_id"
  add_foreign_key "matches", "users", column: "user2_id"
  add_foreign_key "messages", "matches"
  add_foreign_key "messages", "users"
  add_foreign_key "pets", "users"
  add_foreign_key "swipes", "pets"
  add_foreign_key "swipes", "users"
end
