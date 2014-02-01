class CreateMotherData < ActiveRecord::Migration
  def change
    create_table :mother_data do |t|
      t.string :name
      t.string :qualification
      t.string :occupation_designation
      t.integer :annual_income
      t.string :organisation_name
      t.string :organisation_address

      t.timestamps
    end
  end
end
