class ChangeDatatypeToFatherData < ActiveRecord::Migration
  def change
  	change_column :father_data, :annual_income, :string
  end
end
