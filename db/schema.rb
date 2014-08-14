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

ActiveRecord::Schema.define(version: 20140814155253) do

  create_table "carts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_speakers", force: true do |t|
    t.integer  "event_id"
    t.integer  "speaker_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_sponsors", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
    t.integer  "sponsor_id"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.datetime "when"
    t.string   "where"
    t.string   "what"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "banner_url"
  end

  create_table "events_speakers", id: false, force: true do |t|
    t.integer "event_id",   null: false
    t.integer "speaker_id", null: false
  end

  create_table "events_sponsors", id: false, force: true do |t|
    t.integer "event_id",   null: false
    t.integer "sponsor_id", null: false
  end

  create_table "line_items", force: true do |t|
    t.integer  "speaker_id"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "line_items", ["cart_id"], name: "index_line_items_on_cart_id"
  add_index "line_items", ["speaker_id"], name: "index_line_items_on_speaker_id"

  create_table "speakers", force: true do |t|
    t.string   "title"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "suffix"
    t.string   "photo_url"
    t.string   "job_title"
    t.string   "employer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sponsors", force: true do |t|
    t.string   "name"
    t.string   "logo_url"
    t.string   "web_address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "place_token_top"
    t.integer  "place_token_left"
    t.integer  "logo_width"
    t.integer  "logo_height"
  end

end
