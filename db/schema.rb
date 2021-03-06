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

ActiveRecord::Schema.define(version: 20161024152427) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dives", force: :cascade do |t|
    t.integer "user_id",                       null: false
    t.string  "title",                         null: false
    t.integer "number"
    t.string  "site_name",                     null: false
    t.string  "date",                          null: false
    t.string  "location"
    t.text    "description"
    t.integer "rating"
    t.string  "dive_type"
    t.boolean "favorited",     default: false, null: false
    t.string  "buddy_name"
    t.integer "max_depth",                     null: false
    t.integer "average_depth"
    t.string  "duration"
    t.text    "weather"
    t.integer "water_temp"
    t.integer "air_temp"
  end

  create_table "images", force: :cascade do |t|
    t.integer "dive_id", null: false
    t.string  "image",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "user_name",                           null: false
    t.string   "first_name",                          null: false
    t.string   "last_name",                           null: false
    t.string   "agency"
    t.string   "location"
    t.integer  "starting_dive_number",   default: 0,  null: false
    t.string   "certification_date"
    t.text     "certifications"
    t.string   "profile_photo"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["user_name"], name: "index_users_on_user_name", unique: true, using: :btree
  end

  create_table "videos", force: :cascade do |t|
    t.integer "dive_id",   null: false
    t.string  "video_url", null: false
  end

end
