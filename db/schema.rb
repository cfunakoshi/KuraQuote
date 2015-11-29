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

ActiveRecord::Schema.define(version: 20151129181927) do

  create_table "basicinfos", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.text     "suffix"
    t.text     "home_phone"
    t.text     "work_phone"
    t.text     "mailing_address"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "bodilyinjuries", force: :cascade do |t|
    t.text     "limit"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collisions", force: :cascade do |t|
    t.integer  "deductible"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companylists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "active"
  end

  create_table "comprehensives", force: :cascade do |t|
    t.integer  "deductible"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coverages", force: :cascade do |t|
    t.text     "bodilyinjury"
    t.text     "propertydamage"
    t.text     "uninsuredunstacked"
    t.text     "uninsuredstacked"
    t.text     "underinsuredunstacked"
    t.text     "underinsuredstacked"
    t.text     "piprotection"
    t.text     "pideductible"
    t.integer  "collision"
    t.integer  "comprehensive"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "user_id"
  end

  create_table "horribleinsurancebis", force: :cascade do |t|
    t.integer  "price"
    t.integer  "bodilyinjury_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "companylist_id"
  end

  create_table "horribleinsurancecollisions", force: :cascade do |t|
    t.integer  "price"
    t.integer  "collision_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "companylist_id"
  end

  create_table "horribleinsurancepds", force: :cascade do |t|
    t.integer  "price"
    t.integer  "propertydamage_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "companylist_id"
  end

  create_table "horribleinsurancepips", force: :cascade do |t|
    t.integer  "price"
    t.integer  "piprotection_id"
    t.integer  "companylist_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.text     "deductible"
  end

  create_table "horribleinsuranceundermotors", force: :cascade do |t|
    t.integer  "price"
    t.integer  "deductible"
    t.integer  "undermotorist_id"
    t.integer  "companylist_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "horribleinsuranceunmotors", force: :cascade do |t|
    t.integer  "price"
    t.integer  "deductible"
    t.integer  "unmotorist_id"
    t.integer  "companylist_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "pideductibles", force: :cascade do |t|
    t.text     "deductible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "piprotections", force: :cascade do |t|
    t.text     "limit"
    t.integer  "deductible"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "propertydamages", force: :cascade do |t|
    t.text     "limit"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.integer  "companylist_id"
    t.text     "bodilyinjury"
    t.text     "propertydamage"
    t.text     "uninsuredunstacked"
    t.text     "uninsuredstacked"
    t.text     "underinsuredunstacked"
    t.text     "underinsuredstacked"
    t.text     "piprotection"
    t.integer  "pideductible"
    t.integer  "collision"
    t.integer  "comprehensive"
    t.integer  "user_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.text     "discounts"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "agent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "relationships", ["agent_id"], name: "index_relationships_on_agent_id"
  add_index "relationships", ["client_id", "agent_id"], name: "index_relationships_on_client_id_and_agent_id", unique: true
  add_index "relationships", ["client_id"], name: "index_relationships_on_client_id"

  create_table "tradewindbis", force: :cascade do |t|
    t.integer  "price"
    t.integer  "bodilyinjury_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "companylist_id"
  end

  create_table "tradewindpds", force: :cascade do |t|
    t.integer  "price"
    t.integer  "propertydamage_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "companylist_id"
  end

  create_table "tradewindpips", force: :cascade do |t|
    t.integer  "price"
    t.integer  "piprotection_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "companylist_id"
    t.integer  "deductible"
  end

  create_table "tradewindundermotors", force: :cascade do |t|
    t.integer  "price"
    t.integer  "deductible"
    t.integer  "undermotorist_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "companylist_id"
  end

  create_table "tradewindunmotors", force: :cascade do |t|
    t.integer  "price"
    t.integer  "deductible"
    t.integer  "unmotorist_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "companylist_id"
  end

  create_table "undermotorists", force: :cascade do |t|
    t.text     "unstacked"
    t.text     "stacked"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unmotorists", force: :cascade do |t|
    t.text     "unstacked"
    t.text     "stacked"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",           default: false
    t.string   "lastname"
    t.date     "birthday"
    t.boolean  "email_confirmed", default: false
    t.string   "confirm_token"
    t.integer  "vehicle_id"
    t.integer  "agent_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

  create_table "vehiclemanufacturers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "model_id"
  end

  create_table "vehiclemodels", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "user_id"
    t.integer  "vehiclemanufacturer_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "manufacturer"
    t.text     "vin"
    t.string   "model"
    t.text     "specs"
    t.string   "use"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "year"
  end

  create_table "vehiclespecs", force: :cascade do |t|
    t.text     "specifications"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
  end

  create_table "vehicleuses", force: :cascade do |t|
    t.string   "usage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "vehiclevins", force: :cascade do |t|
    t.text     "vin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "years", force: :cascade do |t|
    t.integer  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
