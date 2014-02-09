class AddSbiColumnToStudentCategories < ActiveRecord::Migration
  def change
    add_column :student_categories, :membership_no, :integer
    add_column :student_categories, :grandfather_name, :string
    add_column :student_categories, :branch, :string
  end
end
