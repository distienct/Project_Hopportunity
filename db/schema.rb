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

ActiveRecord::Schema.define(version: 20150716012522) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beers", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "abv"
    t.integer  "category_id"
    t.integer  "brewery_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "beers", ["brewery_id"], name: "index_beers_on_brewery_id", using: :btree
  add_index "beers", ["category_id"], name: "index_beers_on_category_id", using: :btree

  create_table "breweries", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "checkins", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "beer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "checkins", ["beer_id"], name: "index_checkins_on_beer_id", using: :btree
  add_index "checkins", ["user_id"], name: "index_checkins_on_user_id", using: :btree

  create_table "establishments", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "website"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "ratings", force: :cascade do |t|
    t.string   "body"
    t.integer  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "beer_id"
  end

  add_index "ratings", ["beer_id"], name: "index_ratings_on_beer_id", using: :btree
  add_index "ratings", ["user_id"], name: "index_ratings_on_user_id", using: :btree

  create_table "selections", force: :cascade do |t|
    t.integer  "establishment_id"
    t.integer  "beer_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "selections", ["beer_id"], name: "index_selections_on_beer_id", using: :btree
  add_index "selections", ["establishment_id"], name: "index_selections_on_establishment_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "avatar"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "beers", "breweries"
  add_foreign_key "beers", "categories"
  add_foreign_key "checkins", "beers"
  add_foreign_key "checkins", "users"
  add_foreign_key "ratings", "beers"
  add_foreign_key "ratings", "users"
  add_foreign_key "selections", "beers"
  add_foreign_key "selections", "establishments"
end
