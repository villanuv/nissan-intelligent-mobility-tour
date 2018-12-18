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

ActiveRecord::Schema.define(version: 20181218030942) do

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street_address"
    t.string   "city"
    t.string   "state_abbr"
    t.integer  "zip_code"
    t.string   "email"
    t.string   "purchase_period"
    t.string   "vehicles"
    t.string   "consider_nissan"
    t.integer  "opinion"
    t.string   "participation"
    t.boolean  "agree_to_terms"
    t.boolean  "opt_in_news"
    t.boolean  "contact_me"
    t.string   "apt_suite"
    t.boolean  "accompanying_minors"
    t.binary   "signature_pad_string"
  end

end
