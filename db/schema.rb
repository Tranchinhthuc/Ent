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

ActiveRecord::Schema.define(version: 20151215100401) do

  create_table "accounts", force: :cascade do |t|
    t.float    "value",      limit: 24
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "desks", force: :cascade do |t|
    t.datetime "play_date"
    t.integer  "type_desk",  limit: 4
    t.float    "value",      limit: 24
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.integer  "user_id",        limit: 4
    t.integer  "play_number_id", limit: 4
    t.integer  "status",         limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "played_numbers", force: :cascade do |t|
    t.integer  "value",      limit: 4
    t.float    "coin",       limit: 24
    t.string   "status",     limit: 255
    t.integer  "user_id",    limit: 4
    t.integer  "desk_id",    limit: 4
    t.integer  "invoice_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "real_numbers", force: :cascade do |t|
    t.integer  "result_board_id", limit: 4
    t.integer  "value",           limit: 4
    t.integer  "type_prize",      limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "result_boards", force: :cascade do |t|
    t.datetime "happen_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
