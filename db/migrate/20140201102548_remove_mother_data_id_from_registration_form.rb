class RemoveMotherDataIdFromRegistrationForm < ActiveRecord::Migration
  def change
    remove_column :registration_forms, :mother_data_id, :integer
  end
end
