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

ActiveRecord::Schema.define(version: 20140929163025) do

  create_table "activities", force: true do |t|
    t.string   "type"
    t.integer  "person_id"
    t.date     "date"
    t.string   "remarks"
    t.integer  "HRavg"
    t.integer  "HRmax"
    t.decimal  "speed"
    t.integer  "RPE"
    t.string   "beforeNotes"
    t.string   "afterNotes"
    t.integer  "place"
    t.decimal  "priceMoney"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ahtletes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exercises", force: true do |t|
    t.integer  "activity_id"
    t.string   "summary"
    t.integer  "repetitions"
    t.string   "entity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "fName"
    t.string   "lName"
    t.string   "gender"
    t.datetime "birthdate"
    t.string   "street"
    t.integer  "housenumber"
    t.integer  "postalcode"
    t.string   "city"
    t.string   "country"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.string   "type"
    t.decimal  "salary"
    t.float    "numberlikes"
    t.integer  "experience"
    t.decimal  "weight"
    t.decimal  "height"
    t.integer  "hr_max"
    t.integer  "hr_treshold"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trainer_trains", id: false, force: true do |t|
    t.integer "trainer"
    t.integer "trains"
  end

  create_table "trainers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
