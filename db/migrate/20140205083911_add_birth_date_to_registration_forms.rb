class AddBirthDateToRegistrationForms < ActiveRecord::Migration
  def change
    add_column :registration_forms, :date_of_birth, :string
  end
end
