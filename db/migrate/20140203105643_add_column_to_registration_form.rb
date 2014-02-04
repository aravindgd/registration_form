class AddColumnToRegistrationForm < ActiveRecord::Migration
  def change
    add_column :registration_forms, :student_category, :string
    add_column :registration_forms, :kilometers, :integer
  end
end
