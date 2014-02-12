class AddOrganistaionTypeToFatherData < ActiveRecord::Migration
  def change
    add_column :father_data, :organisation_type, :string
  end
end
