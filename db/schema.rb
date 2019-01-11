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

ActiveRecord::Schema.define(version: 2019_01_10_143602) do

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.string "password"
  end

  create_table "sneakers", force: :cascade do |t|
    t.string "sneakers_ref"
    t.string "brand"
    t.string "title"
    t.string "color"
    t.text "img_url"
    t.index ["sneakers_ref"], name: "index_sneakers_on_sneakers_ref", unique: true
  end

  create_table "stocks", force: :cascade do |t|
    t.integer "sneaker_id"
    t.string "seller"
    t.string "size"
    t.text "offer_link"
    t.decimal "price"
    t.string "shipping_cost"
    t.string "shipping_time"
    t.decimal "old_price"
  end

end
