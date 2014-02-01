class AddCorrectReferencesToFatherData < ActiveRecord::Migration
  def change
    add_reference :father_data, :registration_form, index: true
  end
end
