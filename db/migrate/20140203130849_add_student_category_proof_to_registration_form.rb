class AddStudentCategoryProofToRegistrationForm < ActiveRecord::Migration
  def change
    add_column :registration_forms, :student_category_proof, :string
  end
end
