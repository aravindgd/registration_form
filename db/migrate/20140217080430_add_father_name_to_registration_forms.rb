class AddFatherNameToRegistrationForms < ActiveRecord::Migration
  def change
  	add_column :registration_forms, :father_name, :string
  	add_column :registration_forms, :mother_name, :string
  end
end
