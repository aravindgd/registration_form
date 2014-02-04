class SiblingExistingParentIdToRegisterationForms < ActiveRecord::Migration
  def change
  	add_column :registration_forms, :sibling_existing_parent_id, :integer
  end
end
