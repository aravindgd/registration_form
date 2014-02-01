class AddCorrectReferencesToSiblingExistingParent < ActiveRecord::Migration
  def change
    add_reference :sibling_existing_parents, :registration_form, index: true
  end
end
