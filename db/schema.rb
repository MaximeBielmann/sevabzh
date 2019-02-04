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

ActiveRecord::Schema.define(version: 2019_02_04_141055) do

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.string "password"
  end

  create_table "articles", force: :cascade do |t|
    t.integer "admin_id"
    t.string "article_title"
    t.text "article_text"
    t.datetime "article_datetime"
    t.text "article_img"
  end

  create_table "calendars", force: :cascade do |t|
    t.integer "sneaker_id"
    t.integer "seller_id"
    t.datetime "release_date"
    t.text "release_link"
    t.text "release_price"
  end

  create_table "sellers", force: :cascade do |t|
    t.text "logo_url"
    t.string "vendor"
    t.string "country"
    t.text "description"
    t.text "shop_link"
    t.string "shipping_cost"
    t.string "shipping_time"
    t.string "payment"
  end

  create_table "sneakers", force: :cascade do |t|
    t.string "sneakers_ref"
    t.string "brand"
    t.string "title"
    t.string "color"
    t.text "img_url"
    t.text "img_url2"
    t.text "img_url3"
    t.index ["sneakers_ref"], name: "index_sneakers_on_sneakers_ref", unique: true
  end

  create_table "stocks", force: :cascade do |t|
    t.string "size"
    t.text "offer_link"
    t.decimal "old_price"
    t.decimal "price"
    t.integer "seller_id"
    t.integer "sneaker_id"
  end

end
