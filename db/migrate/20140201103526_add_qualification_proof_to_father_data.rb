class AddQualificationProofToFatherData < ActiveRecord::Migration
  def change
    add_column :father_data, :qualification_proof, :string
  end
end
