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

ActiveRecord::Schema.define(version: 20141029115708) do

  create_table "apis", force: true do |t|
    t.string   "name"
    t.text     "url"
    t.text     "emails"
    t.boolean  "enable_notification"
    t.text     "expected_response"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "dummy"
  end

  create_table "logs", force: true do |t|
    t.integer  "api_id"
    t.text     "response"
    t.string   "current_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notifications", force: true do |t|
    t.integer  "api_id"
    t.text     "recipients"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
