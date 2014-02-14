class AddincomeProofToMotherData < ActiveRecord::Migration
  def change
  	add_column :mother_data, :income_proof, :string
  end
end
