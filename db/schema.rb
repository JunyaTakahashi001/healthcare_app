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

ActiveRecord::Schema.define(version: 2021_06_08_150329) do

  create_table "actionlogs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "date", null: false
    t.integer "group_num", null: false
    t.time "start_time"
    t.time "end_time"
    t.string "destination"
    t.string "transportation"
    t.string "departure"
    t.string "arrival"
    t.string "attendees"
    t.string "attendees_details"
    t.text "other"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_actionlogs_on_user_id"
  end

  create_table "healths", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "date", null: false
    t.decimal "temperature_morning", precision: 3, scale: 1
    t.decimal "temperature_night", precision: 3, scale: 1
    t.string "cough"
    t.string "dyspnea"
    t.string "nasal"
    t.string "throat"
    t.string "headache"
    t.string "diarrhea"
    t.string "taste"
    t.string "smell"
    t.text "ather"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_healths_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_users_on_name", unique: true
  end

  add_foreign_key "actionlogs", "users"
  add_foreign_key "healths", "users"
end
