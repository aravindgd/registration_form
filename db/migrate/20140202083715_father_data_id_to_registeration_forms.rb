class FatherDataIdToRegisterationForms < ActiveRecord::Migration
  def change
  	add_column :registration_forms, :father_data_id, :integer
  end
end
