class AddProofFiledToRegistrationForm < ActiveRecord::Migration
  def change
    add_column :registration_forms, :date_of_birth_proof, :string
    add_column :registration_forms, :community_category_proof, :string
    add_column :registration_forms, :residental_address_proof, :string
  end
end
