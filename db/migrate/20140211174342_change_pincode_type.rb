class ChangePincodeType < ActiveRecord::Migration
  def change
  	change_column :registration_forms, :pincode, :string
  end
end
