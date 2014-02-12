class RemovetieupfromregistrationForms < ActiveRecord::Migration
  def change
  remove_column :registration_forms, :tie_up, :boolean
  remove_column :registration_forms, :sibling, :boolean
  remove_column :registration_forms, :child_special, :boolean
  end
end
