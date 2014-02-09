class AddSbiOfficerToStudentCategories < ActiveRecord::Migration
  def change
    add_column :student_categories, :sbi_membership_no, :integer
    add_column :student_categories, :sbi_branch, :string
  end
end
