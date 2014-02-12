class AddtieUptoregistrationForms < ActiveRecord::Migration
  def change
  add_column :registration_forms, :tie_up, :boolean
  add_column :registration_forms, :sibling, :boolean
  add_column :registration_forms, :child_special, :boolean
  end
end
