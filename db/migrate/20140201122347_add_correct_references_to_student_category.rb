class AddCorrectReferencesToStudentCategory < ActiveRecord::Migration
  def change
    add_reference :student_categories, :registration_form, index: true
  end
end
