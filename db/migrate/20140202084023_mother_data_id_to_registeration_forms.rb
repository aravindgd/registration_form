class MotherDataIdToRegisterationForms < ActiveRecord::Migration
  def change
  	add_column :registration_forms, :mother_data_id, :integer
  end
end
