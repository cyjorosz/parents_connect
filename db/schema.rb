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

ActiveRecord::Schema.define(version: 20170406101310) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "attendances", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_attendances_on_event_id", using: :btree
    t.index ["profile_id"], name: "index_attendances_on_profile_id", using: :btree
  end

  create_table "events", force: :cascade do |t|
    t.string   "description"
    t.string   "street_name"
    t.string   "street_number"
    t.string   "zipcode"
    t.string   "city"
    t.string   "country"
    t.integer  "profile_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.float    "latitude"
    t.float    "longitude"
    t.date     "start_date"
    t.time     "start_time"
    t.integer  "duration"
    t.index ["profile_id"], name: "index_events_on_profile_id", using: :btree
  end

  create_table "kids", force: :cascade do |t|
    t.string   "gender"
    t.date     "date_of_birth"
    t.integer  "profile_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["profile_id"], name: "index_kids_on_profile_id", using: :btree
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "street_name"
    t.string   "street_number"
    t.string   "zipcode"
    t.string   "city"
    t.string   "country"
    t.string   "gender"
    t.boolean  "pregnant",      default: false
    t.date     "due_date"
    t.text     "bio"
    t.integer  "user_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "photo"
    t.index ["user_id"], name: "index_profiles_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "attendances", "events"
  add_foreign_key "attendances", "profiles"
  add_foreign_key "events", "profiles"
  add_foreign_key "kids", "profiles"
  add_foreign_key "profiles", "users"
end
