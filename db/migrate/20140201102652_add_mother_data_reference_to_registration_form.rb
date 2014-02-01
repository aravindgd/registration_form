class AddMotherDataReferenceToRegistrationForm < ActiveRecord::Migration
  def change
    add_reference :registration_forms, :mother_data, index: true
  end
end
