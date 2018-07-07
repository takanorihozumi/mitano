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

ActiveRecord::Schema.define(version: 20180707080557) do

  create_table "article_contents", force: :cascade do |t|
    t.integer "article_id"
    t.integer "drama_id"
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_article_contents_on_article_id"
    t.index ["drama_id"], name: "index_article_contents_on_drama_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.text "heading"
    t.text "trailer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "casts", force: :cascade do |t|
    t.string "name"
    t.text "over_view"
    t.string "image_url"
    t.integer "movie_id"
    t.string "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "impression_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["impression_id"], name: "index_comments_on_impression_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "drama_cast_relations", force: :cascade do |t|
    t.integer "drama_id"
    t.integer "cast_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cast_id"], name: "index_drama_cast_relations_on_cast_id"
    t.index ["drama_id"], name: "index_drama_cast_relations_on_drama_id"
  end

  create_table "dramas", force: :cascade do |t|
    t.string "title"
    t.text "over_view"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
    t.integer "seasons_count", default: 0, null: false
    t.string "source_url"
    t.integer "category"
  end

  create_table "entries", force: :cascade do |t|
    t.string "title"
    t.datetime "published"
    t.text "content"
    t.string "url"
    t.string "author"
    t.integer "feed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entry_categories", force: :cascade do |t|
    t.integer "entry_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entry_id"], name: "index_entry_categories_on_entry_id"
  end

  create_table "episodes", force: :cascade do |t|
    t.string "episode_name"
    t.text "over_view"
    t.integer "season_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "episode_no", default: 0, null: false
    t.string "source_url"
    t.index ["season_id"], name: "index_episodes_on_season_id"
  end

  create_table "feeds", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "impressions", force: :cascade do |t|
    t.integer "impression_type"
    t.text "impression"
    t.integer "evaluation"
    t.boolean "is_secret"
    t.integer "user_id"
    t.integer "drama_id"
    t.integer "season_id"
    t.integer "episode_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "likes_count", default: 0, null: false
    t.integer "comments_count", default: 0, null: false
    t.index ["drama_id"], name: "index_impressions_on_drama_id"
    t.index ["episode_id"], name: "index_impressions_on_episode_id"
    t.index ["season_id"], name: "index_impressions_on_season_id"
    t.index ["user_id"], name: "index_impressions_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "impression_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["impression_id"], name: "index_likes_on_impression_id"
    t.index ["user_id", "impression_id"], name: "index_likes_on_user_id_and_impression_id", unique: true
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "photos", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["user_id"], name: "index_photos_on_user_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.string "follower_id"
    t.string "integer"
    t.string "followed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["followed_id"], name: "index_relationships_on_followed_id"
    t.index ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
    t.index ["follower_id"], name: "index_relationships_on_follower_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.string "title"
    t.text "over_view"
    t.integer "episodes_count"
    t.integer "drama_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "season_no", default: 0, null: false
    t.string "source_url"
    t.index ["drama_id"], name: "index_seasons_on_drama_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
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
