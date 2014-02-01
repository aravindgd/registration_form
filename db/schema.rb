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

ActiveRecord::Schema.define(version: 20140201101127) do

  create_table "father_data", force: true do |t|
    t.string   "name"
    t.string   "qualification"
    t.string   "occupation_designation"
    t.integer  "annual_income"
    t.string   "organisation_name"
    t.string   "organisation_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mother_data", force: true do |t|
    t.string   "name"
    t.string   "qualification"
    t.string   "occupation_designation"
    t.integer  "annual_income"
    t.string   "organisation_name"
    t.string   "organisation_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registration_forms", force: true do |t|
    t.string   "name_of_student"
    t.date     "date_of_birth"
    t.boolean  "gender"
    t.string   "nationality"
    t.string   "caste"
    t.string   "community_category"
    t.integer  "student_category_id"
    t.integer  "sibling_existing_parent_id"
    t.string   "child_with_special_needs"
    t.string   "locality"
    t.string   "residental_address"
    t.integer  "pincode"
    t.string   "landmark"
    t.integer  "mobile_number"
    t.integer  "landline_number"
    t.string   "email"
    t.integer  "father_data_id"
    t.integer  "mother_data_id"
    t.integer  "application_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "registration_forms", ["father_data_id"], name: "index_registration_forms_on_father_data_id"
  add_index "registration_forms", ["sibling_existing_parent_id"], name: "index_registration_forms_on_sibling_existing_parent_id"
  add_index "registration_forms", ["student_category_id"], name: "index_registration_forms_on_student_category_id"

  create_table "sibling_existing_parents", force: true do |t|
    t.string   "class"
    t.string   "sec"
    t.string   "admission_num"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
