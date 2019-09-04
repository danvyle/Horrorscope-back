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

ActiveRecord::Schema.define(version: 2019_08_28_222527) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "horoscopes", force: :cascade do |t|
    t.integer "horoscope_id"
    t.date "date"
    t.text "daily_horoscope"
    t.integer "sign_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "retrogrades", force: :cascade do |t|
    t.string "name"
    t.integer "sign_id"
    t.text "explanation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "signs", force: :cascade do |t|
    t.integer "sign_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.string "username"
    t.string "password_digest"
    t.date "birthday"
    t.time "birthtime"
    t.integer "sign_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
