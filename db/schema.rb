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

ActiveRecord::Schema.define(version: 20140218141940) do

  create_table "alumnis", force: true do |t|
    t.string   "year_of_passing"
    t.string   "mark_sheet_proof"
    t.integer  "student_cat_reg_form_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "alumni_category"
  end

  add_index "alumnis", ["student_cat_reg_form_id"], name: "index_alumnis_on_student_cat_reg_form_id"

  create_table "father_data", force: true do |t|
    t.string   "name"
    t.string   "qualification"
    t.string   "occupation_designation"
    t.string   "annual_income"
    t.string   "organisation_name"
    t.string   "organisation_address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "qualification_proof"
    t.integer  "registration_form_id"
    t.string   "organisation_type"
    t.string   "income_proof"
    t.string   "organisation_address2"
  end

  add_index "father_data", ["registration_form_id"], name: "index_father_data_on_registration_form_id"

  create_table "mother_data", force: true do |t|
    t.string   "name"
    t.string   "qualification"
    t.string   "occupation_designation"
    t.string   "annual_income"
    t.string   "organisation_name"
    t.string   "organisation_address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "qualification_proof"
    t.integer  "registration_form_id"
    t.string   "organisation_type"
    t.string   "income_proof"
    t.string   "professional"
    t.string   "organisation_address2"
  end

  add_index "mother_data", ["registration_form_id"], name: "index_mother_data_on_registration_form_id"

  create_table "pre_schools", force: true do |t|
    t.string   "admission_number"
    t.integer  "student_cat_reg_form_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pre_schools", ["student_cat_reg_form_id"], name: "index_pre_schools_on_student_cat_reg_form_id"

  create_table "registration_forms", force: true do |t|
    t.string   "name_of_student"
    t.boolean  "gender"
    t.string   "nationality"
    t.string   "caste"
    t.string   "community_category"
    t.string   "child_with_special_needs"
    t.string   "locality"
    t.string   "residental_address"
    t.string   "pincode"
    t.string   "landmark"
    t.string   "mobile_number"
    t.string   "landline_number"
    t.string   "email"
    t.string   "application_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "date_of_birth_proof"
    t.string   "community_category_proof"
    t.string   "residental_address_proof"
    t.string   "child_with_special_needs_proof"
    t.integer  "sibling_existing_parent_id"
    t.integer  "father_data_id"
    t.integer  "mother_data_id"
    t.string   "student_category"
    t.integer  "kilometers"
    t.string   "student_category_proof"
    t.string   "date_of_birth"
    t.string   "year_of_passing"
    t.string   "marksheet_proof"
    t.string   "rbi_proof"
    t.string   "sail_proof"
    t.string   "residental_address2"
    t.string   "reference"
    t.string   "remarks"
    t.string   "religion"
    t.boolean  "tie_up"
    t.boolean  "sibling"
    t.boolean  "child_special"
  end

  create_table "sbi_grand_parents", force: true do |t|
    t.string   "membership_number"
    t.string   "grandfather_name"
    t.string   "branch"
    t.string   "service_retirement"
    t.integer  "student_cat_reg_form_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sbi_grand_parents", ["student_cat_reg_form_id"], name: "index_sbi_grand_parents_on_student_cat_reg_form_id"

  create_table "sbi_officers", force: true do |t|
    t.string   "membership_number"
    t.string   "branch"
    t.integer  "student_cat_reg_form_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "id_proof"
  end

  add_index "sbi_officers", ["student_cat_reg_form_id"], name: "index_sbi_officers_on_student_cat_reg_form_id"

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

  create_table "staff_children", force: true do |t|
    t.string   "branch"
    t.integer  "student_cat_reg_form_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "staff_children", ["student_cat_reg_form_id"], name: "index_staff_children_on_student_cat_reg_form_id"

  create_table "student_cat_reg_forms", force: true do |t|
    t.integer  "student_category_id"
    t.integer  "registration_form_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "student_cat_reg_forms", ["registration_form_id"], name: "index_student_cat_reg_forms_on_registration_form_id"
  add_index "student_cat_reg_forms", ["student_category_id"], name: "index_student_cat_reg_forms_on_student_category_id"

  create_table "student_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tie_ups", force: true do |t|
    t.string   "rbi_or_sbi_proof"
    t.integer  "student_cat_reg_form_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tie_ups", ["student_cat_reg_form_id"], name: "index_tie_ups_on_student_cat_reg_form_id"

end
