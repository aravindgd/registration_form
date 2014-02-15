class AddTieupToregistrationForms < ActiveRecord::Migration
  def change
  	add_column :registration_forms, :rbi_proof, :string
  	add_column :registration_forms, :sail_proof, :string
  	add_column :registration_forms, :residental_address2, :string
  	add_column :registration_forms, :reference, :string
  	add_column :registration_forms, :remarks, :string
  end
end
