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

ActiveRecord::Schema.define(version: 20150410192631) do

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "concern_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "concerns", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "creator_id"
    t.integer  "state_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "upvotes",     default: 0
    t.integer  "downvotes",   default: 0
    t.integer  "result",      default: 0
    t.integer  "total",       default: 0
  end

  create_table "legislators", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "phone"
    t.string  "oc_email"
    t.string  "facebook_id"
    t.string  "twitter_id"
    t.string  "website"
    t.string  "contact_form"
    t.string  "votesmart_id"
    t.string  "youtube_id"
    t.string  "party"
    t.string  "office"
    t.integer "state_id"
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

end
