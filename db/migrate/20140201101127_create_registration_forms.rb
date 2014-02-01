class CreateRegistrationForms < ActiveRecord::Migration
  def change
    create_table :registration_forms do |t|
      t.string :name_of_student
      t.date :date_of_birth
      t.boolean :gender
      t.string :nationality
      t.string :caste
      t.string :community_category
      t.references :student_category, index: true
      t.references :sibling_existing_parent, index: true
      t.string :child_with_special_needs
      t.string :locality
      t.string :residental_address
      t.integer :pincode
      t.string :landmark
      t.integer :mobile_number
      t.integer :landline_number
      t.string :email
      t.references :father_data, index: true
      t.references :mother_data
      t.integer :application_number

      t.timestamps
    end
  end
end
