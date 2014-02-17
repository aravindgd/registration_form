class RenameFathertoRegistrationForms < ActiveRecord::Migration
  def change
  	rename_column :registration_forms, :father_name, :student_father_name
  	rename_column :registration_forms, :mother_name, :student_mother_name
  end
end
