class RenamecolumToTieUp < ActiveRecord::Migration
  def change
  rename_column :tie_ups, :rbi_or_sbi_proof, :rbi_proof
  end
end
