# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140610201600) do

  create_table "locations", force: true do |t|
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
  end

  create_table "profiles", force: true do |t|
    t.integer  "user_id",                         null: false
    t.string   "location"
    t.text     "i_love"
    t.string   "find_me_in"
    t.string   "hometown"
    t.string   "website"
    t.string   "when_not_with_pet"
    t.string   "why_you_should_read_my_reviews"
    t.string   "second_favorite_website"
    t.string   "last_great_book_read"
    t.string   "my_first_concert"
    t.string   "my_favorite_movie"
    t.string   "my_last_meal"
    t.string   "my_secret"
    t.string   "my_recent_discovery"
    t.string   "my_pets"
    t.string   "my_favorite_breeds"
    t.string   "my_favorite_place_to_go_walking"
    t.string   "min_age"
    t.string   "max_age"
    t.string   "max_distance"
    t.text     "job"
    t.integer  "zip",                             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shelters", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "phone"
    t.string   "main_url"
    t.integer  "distance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_locations", force: true do |t|
    t.integer  "user_id"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "user_type"
    t.string   "nickname"
    t.string   "gender"
    t.string   "your_headline"
    t.string   "birthday"
    t.string   "name"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "visits", force: true do |t|
    t.integer  "visitee_id", null: false
    t.integer  "visitor_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
