class AddReligionToRegistrationForms < ActiveRecord::Migration
  def change
    add_column :registration_forms, :religion, :string
  end
end
