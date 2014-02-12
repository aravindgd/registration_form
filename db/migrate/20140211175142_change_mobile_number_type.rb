class ChangeMobileNumberType < ActiveRecord::Migration
  def change
  	change_column :registration_forms, :mobile_number, :string
  	change_column :registration_forms, :landline_number, :string
  end
end
