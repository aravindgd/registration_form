class AddNameToSiblingExistingParent < ActiveRecord::Migration
  def change
    add_column :sibling_existing_parents, :name, :string
  end
end
