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

ActiveRecord::Schema.define(version: 2018_10_21_064243) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ad_items", force: :cascade do |t|
    t.bigint "ad_id"
    t.bigint "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_id"], name: "index_ad_items_on_ad_id"
    t.index ["item_id"], name: "index_ad_items_on_item_id"
  end

  create_table "ads", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "full_address"
    t.float "amount"
    t.string "max_people"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "group_preferences", force: :cascade do |t|
    t.bigint "group_id"
    t.bigint "preference_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_group_preferences_on_group_id"
    t.index ["preference_id"], name: "index_group_preferences_on_preference_id"
  end

  create_table "groups", force: :cascade do |t|
    t.bigint "ad_id"
    t.bigint "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "amount"
    t.float "remaning_amount"
    t.index ["ad_id"], name: "index_groups_on_ad_id"
    t.index ["person_id"], name: "index_groups_on_person_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "url"
    t.bigint "ad_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_id"], name: "index_images_on_ad_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "avatar"
    t.string "rg"
    t.string "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "preferences", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "ad_items", "ads"
  add_foreign_key "ad_items", "items"
  add_foreign_key "group_preferences", "groups"
  add_foreign_key "group_preferences", "preferences"
  add_foreign_key "groups", "ads"
  add_foreign_key "groups", "people"
  add_foreign_key "images", "ads"
end
