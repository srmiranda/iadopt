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

ActiveRecord::Schema.define(version: 20151007152626) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dogs", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "breed",      null: false
    t.string   "size",       null: false
    t.decimal  "age",        null: false
    t.string   "gender",     null: false
    t.integer  "shelter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "kids"
    t.boolean  "fixed"
    t.string   "url"
  end

  add_index "dogs", ["breed"], name: "index_dogs_on_breed", using: :btree

  create_table "employees", force: :cascade do |t|
    t.integer "shelter_id"
    t.integer "user_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.string "body", null: false
  end

  create_table "shelters", force: :cascade do |t|
    t.string  "name",    null: false
    t.string  "address", null: false
    t.string  "city",    null: false
    t.string  "state",   null: false
    t.string  "zip",     null: false
    t.string  "phone",   null: false
    t.string  "url"
    t.integer "user_id"
    t.string  "website"
    t.string  "email"
  end

  add_index "shelters", ["name"], name: "index_shelters_on_name", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",                   null: false
    t.string   "encrypted_password",     default: "",                   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,                    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.integer  "shelter_id"
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
    t.string   "username",                                              null: false
    t.string   "avatar",                 default: "/avatardefault.png", null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
