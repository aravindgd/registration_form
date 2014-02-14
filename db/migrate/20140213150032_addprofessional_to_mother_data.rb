class AddprofessionalToMotherData < ActiveRecord::Migration
  def change
  	add_column :mother_data, :professional, :string
  	add_column :mother_data, :organisation_address2, :string
  end
end
