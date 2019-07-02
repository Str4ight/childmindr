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

ActiveRecord::Schema.define(version: 20190702190404) do

  create_table "category_ages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_genders", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_ratingcleans", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_ratingcommunications", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_ratingfacilities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_ratingfoods", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_ratingmusics", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_ratingsettings", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_ratingsports", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_ratingteachings", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_schooltypes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_searches", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_segments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_services", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_summarychecks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_towns", force: :cascade do |t|
    t.string "name"
    t.integer "category_zone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_zones", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "checklists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "checklists_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "checklist_id", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "user_id"
    t.integer "school_id"
    t.integer "category_ratingteaching_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.integer "category_ratingfacility_id"
    t.integer "category_ratingfood_id"
    t.integer "category_ratingmusic_id"
    t.integer "category_ratingsport_id"
  end

  create_table "reviewusers", force: :cascade do |t|
    t.text "content"
    t.integer "user_id"
    t.string "title"
    t.integer "category_ratingclean_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "parent_id"
    t.integer "provider_id"
    t.integer "category_ratingcommunication_id"
    t.integer "category_ratingfood_id"
    t.integer "category_ratingsetting_id"
    t.index ["parent_id"], name: "index_reviewusers_on_parent_id"
    t.index ["provider_id"], name: "index_reviewusers_on_provider_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.text "about"
    t.text "service"
    t.string "email"
    t.string "telepone"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.string "postcode"
    t.integer "pupils"
    t.string "offsetreportlink"
    t.boolean "approve"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_schooltype_id"
    t.integer "category_country_id"
    t.integer "category_region_id"
    t.integer "user_id"
    t.integer "start_age"
    t.integer "end_age"
    t.string "slug"
    t.integer "category_zone_id"
    t.string "town"
    t.integer "category_town_id"
    t.string "ref"
    t.index ["slug"], name: "index_schools_on_slug", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "category_role_id"
    t.integer "category_segment_id"
    t.date "birthdate"
    t.boolean "terms"
    t.string "postcode"
    t.string "slug"
    t.integer "category_service_id"
    t.integer "category_gender_id"
    t.integer "category_summarycheck_id"
    t.integer "category_country_id"
    t.integer "category_region_id"
    t.integer "category_zone_id"
    t.integer "category_town_id"
    t.float "price"
    t.text "about"
    t.text "experience"
    t.text "qualifications"
    t.text "availability"
    t.string "ref"
    t.boolean "mondays"
    t.boolean "tuesdays"
    t.boolean "wednesdays"
    t.boolean "thursdays"
    t.boolean "fridays"
    t.boolean "saturdays"
    t.boolean "sundays"
    t.time "mstart_time"
    t.time "mend_time"
    t.time "tstart_time"
    t.time "tend_time"
    t.time "wstart_time"
    t.time "wend_time"
    t.time "thstart_time"
    t.time "thend_time"
    t.time "fstart_time"
    t.time "fend_time"
    t.time "sstart_time"
    t.time "send_time"
    t.time "sustart_time"
    t.time "suend_time"
    t.boolean "approve"
    t.string "image"
    t.string "telephone"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["slug"], name: "index_users_on_slug", unique: true
  end

end
