class AddStudentCategoryIdToRegistrationForms < ActiveRecord::Migration
  def change
    add_column :registration_forms, :student_category_id, :integer
  end
end
