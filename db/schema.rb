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

ActiveRecord::Schema.define(version: 20190724120100) do

# Could not dump table "boundaries" because of following StandardError
#   Unknown type 'geometry' for column 'geometry'

  create_table "census_boundaries", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.integer  "area_identifier", limit: 4
    t.text     "bounds",          limit: 4294967295
    t.string   "geo_id",          limit: 255
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "geom_type",       limit: 255
  end

  create_table "provider_statistics", force: :cascade do |t|
    t.string   "name",                       limit: 255,                                           null: false
    t.integer  "applications",               limit: 4,                            default: 0,      null: false
    t.float    "rating",                     limit: 24,                           default: 0.0,    null: false
    t.decimal  "advertised_to_actual_ratio",             precision: 5,  scale: 2, default: 0.0,    null: false
    t.decimal  "average_price",                          precision: 10, scale: 2, default: 0.0,    null: false
    t.string   "provider_type",              limit: 20,                           default: "both", null: false
    t.datetime "created_at",                                                                       null: false
    t.datetime "updated_at",                                                                       null: false
    t.decimal  "actual_speed_sum",                       precision: 60, scale: 2, default: 0.0,    null: false
    t.decimal  "provider_speed_sum",                     precision: 60, scale: 2, default: 0.0,    null: false
    t.boolean  "from_mlab",                                                       default: false
  end

  create_table "service_providers", force: :cascade do |t|
    t.integer  "start_ipa",  limit: 4
    t.integer  "end_ipa",    limit: 4
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "short_name", limit: 255
  end

  create_table "stats_caches", id: false, force: :cascade do |t|
    t.string   "stat_type",                limit: 255, null: false
    t.string   "stat_id",                  limit: 255, null: false
    t.string   "date_type",                limit: 255, null: false
    t.date     "date_value",                           null: false
    t.float    "download_avg",             limit: 24,  null: false
    t.float    "download_median",          limit: 24,  null: false
    t.float    "download_max",             limit: 24,  null: false
    t.integer  "download_count",           limit: 4,   null: false
    t.float    "download_sua_avg",         limit: 24,  null: false
    t.float    "download_sua_median",      limit: 24,  null: false
    t.float    "download_sua_max",         limit: 24,  null: false
    t.integer  "download_sua_count",       limit: 4,   null: false
    t.float    "download_0_5",             limit: 24,  null: false
    t.float    "download_6_10",            limit: 24,  null: false
    t.float    "download_11_20",           limit: 24,  null: false
    t.float    "download_21_40",           limit: 24,  null: false
    t.float    "download_40_60",           limit: 24,  null: false
    t.float    "download_61_80",           limit: 24,  null: false
    t.float    "download_81_100",          limit: 24,  null: false
    t.float    "download_101_250",         limit: 24,  null: false
    t.float    "download_251_500",         limit: 24,  null: false
    t.float    "download_500_1000",        limit: 24,  null: false
    t.float    "download_1001",            limit: 24,  null: false
    t.integer  "download_less_than_5",     limit: 4,   null: false
    t.integer  "download_less_than_25",    limit: 4,   null: false
    t.integer  "download_faster_than_100", limit: 4,   null: false
    t.integer  "download_faster_than_250", limit: 4,   null: false
    t.float    "upload_avg",               limit: 24,  null: false
    t.float    "upload_median",            limit: 24,  null: false
    t.float    "upload_max",               limit: 24,  null: false
    t.integer  "upload_count",             limit: 4,   null: false
    t.float    "upload_sua_avg",           limit: 24,  null: false
    t.float    "upload_sua_median",        limit: 24,  null: false
    t.float    "upload_sua_max",           limit: 24,  null: false
    t.integer  "upload_sua_count",         limit: 4,   null: false
    t.float    "upload_0_5",               limit: 24,  null: false
    t.float    "upload_6_10",              limit: 24,  null: false
    t.float    "upload_11_20",             limit: 24,  null: false
    t.float    "upload_21_40",             limit: 24,  null: false
    t.float    "upload_40_60",             limit: 24,  null: false
    t.float    "upload_61_80",             limit: 24,  null: false
    t.float    "upload_81_100",            limit: 24,  null: false
    t.float    "upload_101_250",           limit: 24,  null: false
    t.float    "upload_251_500",           limit: 24,  null: false
    t.float    "upload_500_1000",          limit: 24,  null: false
    t.float    "upload_1001",              limit: 24,  null: false
    t.integer  "upload_less_than_5",       limit: 4,   null: false
    t.integer  "upload_less_than_25",      limit: 4,   null: false
    t.integer  "upload_faster_than_100",   limit: 4,   null: false
    t.integer  "upload_faster_than_250",   limit: 4,   null: false
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "submissions", force: :cascade do |t|
    t.string   "testing_for",         limit: 255
    t.string   "address",             limit: 250
    t.string   "zip_code",            limit: 10
    t.string   "provider",            limit: 255
    t.string   "connected_with",      limit: 255
    t.float    "monthly_price",       limit: 24
    t.float    "provider_down_speed", limit: 24
    t.decimal  "provider_price",                  precision: 15, scale: 2
    t.float    "actual_down_speed",   limit: 24
    t.decimal  "actual_price",                    precision: 15, scale: 2
    t.integer  "rating",              limit: 4
    t.boolean  "completed",                                                default: false
    t.datetime "created_at",                                                                null: false
    t.datetime "updated_at",                                                                null: false
    t.decimal  "latitude",                        precision: 7,  scale: 4
    t.decimal  "longitude",                       precision: 7,  scale: 4
    t.integer  "ping",                limit: 4
    t.float    "actual_upload_speed", limit: 24,                           default: 0.0
    t.string   "test_id",             limit: 140
    t.string   "ip_address",          limit: 60
    t.string   "hostname",            limit: 255
    t.boolean  "from_mlab",                                                default: false
    t.string   "area_code",           limit: 15
    t.string   "test_type",           limit: 15,                           default: "both"
    t.string   "census_code",         limit: 255
    t.float    "upload_median",       limit: 24
    t.float    "download_median",     limit: 24
    t.string   "census_status",       limit: 10
    t.date     "test_date",                                                                 null: false
    t.string   "country_code",        limit: 255
    t.string   "region",              limit: 255
    t.string   "county",              limit: 255
    t.integer  "accuracy",            limit: 4
    t.integer  "location",            limit: 4
    t.string   "census_block",        limit: 255
  end

  add_index "submissions", ["actual_down_speed"], name: "index_submissions_on_actual_down_speed", using: :btree
  add_index "submissions", ["census_code", "test_type", "test_date"], name: "index_submissions_on_census_code_and_test_type_and_test_date", using: :btree
  add_index "submissions", ["census_code"], name: "index_submissions_on_census_code", using: :btree
  add_index "submissions", ["census_status"], name: "index_submissions_on_census_status", using: :btree
  add_index "submissions", ["country_code", "region", "test_type"], name: "index_submissions_on_country_code_and_region_and_test_type", using: :btree
  add_index "submissions", ["latitude", "longitude"], name: "index_submissions_on_latitude_and_longitude", using: :btree
  add_index "submissions", ["provider", "test_date", "test_type"], name: "index_submissions_on_provider_and_test_date_and_test_type", using: :btree
  add_index "submissions", ["provider", "test_type", "test_date"], name: "index_submissions_on_provider_and_test_type_and_test_date", using: :btree
  add_index "submissions", ["provider"], name: "index_submissions_on_provider", using: :btree
  add_index "submissions", ["rating"], name: "index_submissions_on_rating", using: :btree
  add_index "submissions", ["test_date", "ip_address", "test_type"], name: "index_submissions_on_test_date_and_ip_address_and_test_type", using: :btree
  add_index "submissions", ["test_id"], name: "index_submissions_on_test_id", using: :btree
  add_index "submissions", ["test_type"], name: "index_submissions_on_test_type", using: :btree
  add_index "submissions", ["testing_for"], name: "index_submissions_on_testing_for", using: :btree
  add_index "submissions", ["zip_code", "test_type", "test_date"], name: "index_submissions_on_zip_code_and_test_type_and_test_date", using: :btree
  add_index "submissions", ["zip_code"], name: "index_submissions_on_zip_code", using: :btree

  create_table "zip_boundaries", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "zip_type",   limit: 255
    t.text     "bounds",     limit: 4294967295
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

end
