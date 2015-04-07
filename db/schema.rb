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

ActiveRecord::Schema.define(version: 20150407211607) do

  create_table "concerns", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "address"
    t.integer  "district"
    t.integer  "creator_id"
    t.integer  "zipcode_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "uid"
    t.string   "provider"
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "concern_id"
    t.integer  "voter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "upvote"
  end

  create_table "zipcodes", force: :cascade do |t|
    t.integer  "zip"
    t.integer  "concern_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end