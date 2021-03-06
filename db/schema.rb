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

ActiveRecord::Schema.define(version: 20171231025012) do

  create_table "collection_types", force: :cascade do |t|
    t.string "name"
    t.text "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "datfiles", force: :cascade do |t|
    t.string "name"
    t.text "readme"
    t.integer "collection_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "system_id"
    t.integer "datstatus_id"
    t.string "file_file_name"
    t.string "file_content_type"
    t.integer "file_file_size"
    t.datetime "file_updated_at"
    t.index ["collection_type_id"], name: "index_datfiles_on_collection_type_id"
    t.index ["datstatus_id"], name: "index_datfiles_on_datstatus_id"
    t.index ["system_id"], name: "index_datfiles_on_system_id"
    t.index ["user_id"], name: "index_datfiles_on_user_id"
  end

  create_table "datfiles_releases", id: false, force: :cascade do |t|
    t.integer "datfile_id", null: false
    t.integer "release_id", null: false
    t.index ["release_id", "datfile_id"], name: "index_datfiles_releases_on_release_id_and_datfile_id"
  end

  create_table "datstatuses", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.text "descStatus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groles", force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.integer "route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_groles_on_role_id"
    t.index ["route_id"], name: "index_groles_on_route_id"
    t.index ["user_id"], name: "index_groles_on_user_id"
  end

  create_table "releases", force: :cascade do |t|
    t.text "descRelease"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "routes", force: :cascade do |t|
    t.string "name"
    t.string "path"
    t.string "priority"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "systems", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "dateRelease"
    t.integer "systemsType_id"
    t.integer "company_id"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["company_id"], name: "index_systems_on_company_id"
    t.index ["systemsType_id"], name: "index_systems_on_systemsType_id"
  end

  create_table "systems_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.string "username"
    t.boolean "pub"
    t.boolean "mod"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
