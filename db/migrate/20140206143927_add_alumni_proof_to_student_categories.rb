class AddAlumniProofToStudentCategories < ActiveRecord::Migration
  def change
    add_column :student_categories, :year_of_passing, :string
    add_column :student_categories, :marksheet_proof, :string
  end
end
