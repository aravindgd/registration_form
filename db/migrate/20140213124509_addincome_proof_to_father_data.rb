class AddincomeProofToFatherData < ActiveRecord::Migration
  def change
  	add_column :father_data, :income_proof, :string
  end
end
