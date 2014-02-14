class RenameIdproofToSbiOfficer < ActiveRecord::Migration
  def change
  	rename_column :sbi_officers, :id_proof, :sbi_id_proof
  end
end
