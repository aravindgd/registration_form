class AddCorrectReferencesToMotherData < ActiveRecord::Migration
  def change
    add_reference :mother_data, :registration_form, index: true
  end
end
