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

ActiveRecord::Schema.define(version: 20190317203042) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "charities", force: :cascade do |t|
    t.string "regno", limit: 14, default: "0", null: false
    t.integer "subno", default: 0, null: false
    t.string "name"
    t.string "orgtype"
    t.text "gd"
    t.string "aob"
    t.string "aob_defined", limit: 1
    t.string "nhs", limit: 1
    t.string "ha_no"
    t.string "corr"
    t.string "add1"
    t.string "add2"
    t.string "add3"
    t.string "add4"
    t.string "add5"
    t.string "postcode", limit: 15
    t.string "phone", limit: 100
    t.string "fax", limit: 100
    t.float "lon"
    t.float "lat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "charity_objects", force: :cascade do |t|
    t.string "regno", limit: 14, default: "0", null: false
    t.integer "subno", default: 0, null: false
    t.string "seqno", limit: 4, default: "", null: false
    t.text "object"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["regno"], name: "index_charity_objects_on_regno"
  end

  create_table "organisations", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "address", default: "", null: false
    t.string "postcode", default: "", null: false
    t.string "email", default: "", null: false
    t.text "description"
    t.string "website", default: "", null: false
    t.string "telephone", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.boolean "gmaps"
    t.text "donation_info"
    t.boolean "publish_address", default: false
    t.boolean "publish_phone", default: false
    t.boolean "publish_email", default: true
    t.datetime "deleted_at"
    t.string "type", default: "Organisation"
    t.boolean "non_profit"
    t.string "slug"
    t.datetime "imported_at"
    t.string "regno"
    t.index ["regno"], name: "index_organisations_on_regno"
  end

end
