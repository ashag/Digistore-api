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

ActiveRecord::Schema.define(version: 20140320180837) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carts", force: true do |t|
    t.string   "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.integer  "quantity"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "cart_id"
    t.string   "customerName"
    t.string   "email"
    t.integer  "total"
    t.string   "status"
    t.string   "cc_info"
    t.string   "cc_cvv"
    t.string   "cc_exp"
    t.string   "zip_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "artist"
    t.string   "description"
    t.string   "price"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
