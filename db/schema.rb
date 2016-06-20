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

ActiveRecord::Schema.define(version: 20160615145116) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "examples", ["user_id"], name: "index_examples_on_user_id", using: :btree

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "description"
    t.decimal  "abv"
    t.integer  "rating"
    t.string   "label_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.text     "spot"
    t.date     "day"
    t.text     "conditions"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.integer  "surfboard_id"
  end

  add_index "sessions", ["surfboard_id"], name: "index_sessions_on_surfboard_id", using: :btree
  add_index "sessions", ["user_id"], name: "index_sessions_on_user_id", using: :btree

  create_table "surfboards", force: :cascade do |t|
    t.integer  "height"
    t.text     "shape"
    t.text     "fin_setup"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "session_id"
  end

  add_index "surfboards", ["session_id"], name: "index_surfboards_on_session_id", using: :btree
  add_index "surfboards", ["user_id"], name: "index_surfboards_on_user_id", using: :btree

# Could not dump table "users" because of following StandardError
#   Unknown type 'favorites' for column 'has_many'

  add_foreign_key "examples", "users"
  add_foreign_key "sessions", "surfboards"
  add_foreign_key "sessions", "users"
  add_foreign_key "surfboards", "sessions"
  add_foreign_key "surfboards", "users"
end
