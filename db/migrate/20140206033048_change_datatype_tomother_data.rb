class ChangeDatatypeTomotherData < ActiveRecord::Migration
  def change
  	change_column :mother_data, :annual_income, :string
  end
end
