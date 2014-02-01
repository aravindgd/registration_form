class AddQualificationProofToMotherData < ActiveRecord::Migration
  def change
    add_column :mother_data, :qualification_proof, :string
  end
end
