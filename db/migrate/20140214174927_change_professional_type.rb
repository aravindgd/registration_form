class ChangeProfessionalType < ActiveRecord::Migration
  def change
  	change_column :mother_data, :professional, :boolean
  end
end
