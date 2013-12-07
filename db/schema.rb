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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131207062401) do

  create_table "causes", :force => true do |t|
    t.string   "title",                               :null => false
    t.string   "link"
    t.string   "category"
    t.string   "chime_reason", :default => "because"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  create_table "chimes", :force => true do |t|
    t.integer  "cause_id",   :null => false
    t.integer  "user_id"
    t.string   "reason"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "resonates", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "chime_id",   :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "resonates", ["chime_id", "user_id"], :name => "index_resonates_on_chime_id_and_user_id", :unique => true

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "clout"
    t.string   "image_url"
  end

end
