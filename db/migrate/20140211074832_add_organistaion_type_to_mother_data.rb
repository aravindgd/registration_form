class AddOrganistaionTypeToMotherData < ActiveRecord::Migration
  def change
    add_column :mother_data, :organisation_type, :string
  end
end
