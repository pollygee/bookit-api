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

ActiveRecord::Schema.define(version: 20150729163447) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.boolean  "showed"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "pantry_day_id"
    t.integer  "client_id"
    t.boolean  "utilities"
  end

  create_table "clients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "zip"
    t.string   "display_phone"
    t.string   "data_phone"
    t.string   "county"
    t.string   "family_size"
    t.string   "account_number"
    t.string   "email"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.boolean  "active_client"
  end

  create_table "notes", force: :cascade do |t|
    t.integer  "voicemail_id"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pantry_days", force: :cascade do |t|
    t.datetime "date_time"
    t.integer  "num_volunteers"
    t.integer  "max_num_clients"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "voicemails", force: :cascade do |t|
    t.integer  "client_id"
    t.boolean  "resolved",       default: false
    t.boolean  "out_of_area",    default: false
    t.boolean  "above_income",   default: false
    t.boolean  "needs_other",    default: false
    t.boolean  "no_docs",        default: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "time_with_call", default: 0
  end

end
