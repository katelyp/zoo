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

ActiveRecord::Schema.define(version: 20160516170643) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.string   "name"
    t.string   "classification"
    t.integer  "legs"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "cabinets", force: :cascade do |t|
    t.string   "name"
    t.integer  "occupiable_id"
    t.string   "occupiable_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "cabinets", ["occupiable_type", "occupiable_id"], name: "index_cabinets_on_occupiable_type_and_occupiable_id", using: :btree

  create_table "plants", force: :cascade do |t|
    t.string   "name"
    t.boolean  "is_green"
    t.boolean  "is_flowering"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
