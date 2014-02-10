class RemoveWrongReferencesFromRegistrationForms < ActiveRecord::Migration
  def change
    remove_reference :registration_forms, :mother_data, index: true
    remove_reference :registration_forms, :father_data, index: true
    remove_reference :registration_forms, :sibling_existing_parent, index: true
  end
end
