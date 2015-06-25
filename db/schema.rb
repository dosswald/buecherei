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

ActiveRecord::Schema.define(version: 0) do

  create_table "books", force: :cascade do |t|
    t.string "title",     limit: 30, null: false
    t.string "author",    limit: 30, null: false
    t.string "publisher", limit: 30, null: false
    t.string "genre",     limit: 30, null: false
  end

  create_table "borrowings", force: :cascade do |t|
    t.datetime "date_of_issue",            null: false
    t.datetime "date_of_return",           null: false
    t.integer  "copy_id",        limit: 4, null: false
    t.integer  "customer_id",    limit: 4, null: false
  end

  add_index "borrowings", ["copy_id"], name: "copy_id", using: :btree
  add_index "borrowings", ["customer_id"], name: "customer_id", using: :btree

  create_table "copies", force: :cascade do |t|
    t.integer "book_id", limit: 4,                    null: false
    t.string  "quality", limit: 6, default: "as new", null: false
  end

  create_table "customer", force: :cascade do |t|
    t.string "first_name", limit: 30, null: false
    t.string "last_name",  limit: 30, null: false
    t.date   "birth_date",            null: false
  end

  add_foreign_key "borrowings", "copies", name: "borrowings_ibfk_2"
  add_foreign_key "borrowings", "customer", name: "borrowings_ibfk_1"
end
