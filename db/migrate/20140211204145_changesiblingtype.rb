class Changesiblingtype < ActiveRecord::Migration
  def change
  	change_column :registration_forms, :sibling, :string
  	change_column :registration_forms, :child_special, :string
  end
end
