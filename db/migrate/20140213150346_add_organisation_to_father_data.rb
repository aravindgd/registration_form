class AddOrganisationToFatherData < ActiveRecord::Migration
  def change
  	add_column :father_data, :organisation_address2, :string
  end
end
