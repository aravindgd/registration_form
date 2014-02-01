class AddCsnProofToRegistartionForm < ActiveRecord::Migration
  def change
    add_column :registration_forms, :child_with_special_needs_proof, :string
  end
end
