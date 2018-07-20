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

ActiveRecord::Schema.define(version: 20180720023028) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resend_request_on_subscribes", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "resend_request_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resend_request_id"], name: "index_resend_request_on_subscribes_on_resend_request_id"
    t.index ["user_id"], name: "index_resend_request_on_subscribes_on_user_id"
    t.index ["user_id"], name: "resend_request_on_subscribe", unique: true
  end

  create_table "resend_requests", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_resend_requests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "resend_request_on_subscribes", "resend_requests"
  add_foreign_key "resend_request_on_subscribes", "users"
  add_foreign_key "resend_requests", "users"
end
