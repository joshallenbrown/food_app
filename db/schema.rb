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

ActiveRecord::Schema.define(version: 20160930024417) do

  create_table "accounts", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "store_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_accounts_on_product_id"
    t.index ["store_id"], name: "index_accounts_on_store_id"
  end

  create_table "demos", force: :cascade do |t|
    t.integer  "visit_id"
    t.integer  "product_id"
    t.integer  "flavor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flavor_id"], name: "index_demos_on_flavor_id"
    t.index ["product_id"], name: "index_demos_on_product_id"
    t.index ["visit_id"], name: "index_demos_on_visit_id"
  end

  create_table "flavors", force: :cascade do |t|
    t.string   "name"
    t.integer  "product_id"
    t.decimal  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_flavors_on_product_id"
  end

  create_table "merches", force: :cascade do |t|
    t.integer  "visit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["visit_id"], name: "index_merches_on_visit_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "flavor_id"
    t.decimal  "price",      precision: 8, scale: 2
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["flavor_id"], name: "index_products_on_flavor_id"
  end

  create_table "stores", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  create_table "visits", force: :cascade do |t|
    t.integer  "merch_id"
    t.integer  "demo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["demo_id"], name: "index_visits_on_demo_id"
    t.index ["merch_id"], name: "index_visits_on_merch_id"
  end

end
