class RenamecolumnToPreSchool < ActiveRecord::Migration
  def change
  	rename_column :pre_schools, :copy_of_fee_chalan, :admission_number
  end
end
