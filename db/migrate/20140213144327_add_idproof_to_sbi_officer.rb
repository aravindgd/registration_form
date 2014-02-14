class AddIdproofToSbiOfficer < ActiveRecord::Migration
  def change
  	add_column :sbi_officers, :id_proof, :string
  end
end
