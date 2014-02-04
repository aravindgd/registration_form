class AddSiblingToRegistrationForm < ActiveRecord::Migration
  def change
    add_column :registration_forms, :sibling, :string
  end
end
