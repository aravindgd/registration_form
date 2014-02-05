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

ActiveRecord::Schema.define(version: 20140205083911) do

  create_table "father_data", force: true do |t|
    t.string   "name"
    t.string   "qualification"
    t.string   "occupation_designation"
    t.integer  "annual_income"
    t.string   "organisation_name"
    t.string   "organisation_address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "qualification_proof"
    t.integer  "registration_form_id"
  end

  add_index "father_data", ["registration_form_id"], name: "index_father_data_on_registration_form_id"

  create_table "mother_data", force: true do |t|
    t.string   "name"
    t.string   "qualification"
    t.string   "occupation_designation"
    t.integer  "annual_income"
    t.string   "organisation_name"
    t.string   "organisation_address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "qualification_proof"
    t.integer  "registration_form_id"
  end

  add_index "mother_data", ["registration_form_id"], name: "index_mother_data_on_registration_form_id"

  create_table "registration_forms", force: true do |t|
    t.string   "name_of_student"
    t.boolean  "gender"
    t.string   "nationality"
    t.string   "caste"
    t.string   "community_category"
    t.string   "child_with_special_needs"
    t.string   "locality"
    t.string   "residental_address"
    t.integer  "pincode"
    t.string   "landmark"
    t.integer  "mobile_number"
    t.integer  "landline_number"
    t.string   "email"
    t.integer  "application_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "date_of_birth_proof"
    t.string   "community_category_proof"
    t.string   "residental_address_proof"
    t.string   "child_with_special_needs_proof"
    t.integer  "student_data_id"
    t.integer  "student_category_id"
    t.integer  "sibling_existing_parent_id"
    t.integer  "father_data_id"
    t.integer  "mother_data_id"
    t.string   "student_category"
    t.integer  "kilometers"
    t.string   "student_category_proof"
    t.string   "sibling"
    t.date     "birth_date"
    t.string   "date_of_birth"
  end

  create_table "sibling_existing_parents", force: true do |t|
    t.string   "sec"
    t.string   "admission_num"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "registration_form_id"
    t.string   "class_of_sibling"
    t.string   "name"
    t.string   "school_name"
  end

  add_index "sibling_existing_parents", ["registration_form_id"], name: "index_sibling_existing_parents_on_registration_form_id"

  create_table "student_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "registration_form_id"
  end

  add_index "student_categories", ["registration_form_id"], name: "index_student_categories_on_registration_form_id"

end
