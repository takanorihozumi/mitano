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

ActiveRecord::Schema.define(version: 20180505055621) do

  create_table "dramas", force: :cascade do |t|
    t.string "title"
    t.text "over_view"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
    t.integer "seasons_count", default: 1, null: false
  end

  create_table "episodes", force: :cascade do |t|
    t.string "episode_name"
    t.text "over_view"
    t.integer "season_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["season_id"], name: "index_episodes_on_season_id"
  end

  create_table "impressions", force: :cascade do |t|
    t.integer "impression_type"
    t.text "impressoin"
    t.integer "evaluation"
    t.boolean "is_secret"
    t.integer "user_id"
    t.integer "drama_id"
    t.integer "season_id"
    t.integer "episode_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["drama_id"], name: "index_impressions_on_drama_id"
    t.index ["episode_id"], name: "index_impressions_on_episode_id"
    t.index ["season_id"], name: "index_impressions_on_season_id"
    t.index ["user_id"], name: "index_impressions_on_user_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.string "title"
    t.text "over_view"
    t.integer "episodes_count"
    t.integer "drama_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "season_no", default: 0, null: false
    t.index ["drama_id"], name: "index_seasons_on_drama_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "image"
    t.string "name"
    t.string "phone_number"
    t.string "description"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
