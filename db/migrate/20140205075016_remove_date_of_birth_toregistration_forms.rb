class RemoveDateOfBirthToregistrationForms < ActiveRecord::Migration
  def change
  	remove_column :registration_forms, :date_of_birth, :date
  end
end
