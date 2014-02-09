class AddAlumniProofToRegistrationForms < ActiveRecord::Migration
  def change
    add_column :registration_forms, :year_of_passing, :string
    add_column :registration_forms, :marksheet_proof, :string
  end
end 