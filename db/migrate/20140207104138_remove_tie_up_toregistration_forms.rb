class RemoveTieUpToregistrationForms < ActiveRecord::Migration
  def change
  	remove_column :registration_forms, :tie_up, :string
  	remove_column :registration_forms, :tie_up_proof, :string
  	remove_column :registration_forms, :residental_address2, :string
  	remove_column :registration_forms, :reference, :string
  	remove_column :registration_forms, :remarks, :string
  end
end