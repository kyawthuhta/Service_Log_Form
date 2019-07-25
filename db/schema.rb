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

ActiveRecord::Schema.define(version: 2019_07_24_035658) do

  create_table "cms", force: :cascade do |t|
    t.integer "contract_id"
    t.integer "machine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_id"], name: "index_cms_on_contract_id"
    t.index ["machine_id"], name: "index_cms_on_machine_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.date "dated"
    t.integer "person_id"
    t.date "service_from"
    t.date "service_to"
    t.string "preferred_date"
    t.string "preferred_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_contracts_on_person_id"
  end

  create_table "machines", force: :cascade do |t|
    t.string "name"
    t.string "mac"
    t.string "cpu"
    t.string "ram"
    t.string "hdd"
    t.string "optical_drive"
    t.string "os"
    t.date "purchase_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mslogs", force: :cascade do |t|
    t.date "date"
    t.integer "machine_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["machine_id"], name: "index_mslogs_on_machine_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "designation"
    t.string "organization"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "peoplrs", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "designation"
    t.string "organization"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "svclogs", force: :cascade do |t|
    t.integer "organization_id"
    t.string "department"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_svclogs_on_organization_id"
  end

  create_table "svms", force: :cascade do |t|
    t.integer "svclog_id"
    t.integer "mslog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mslog_id"], name: "index_svms_on_mslog_id"
    t.index ["svclog_id"], name: "index_svms_on_svclog_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "phone"
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
