class RemoveClassFromSiblingExistingParent < ActiveRecord::Migration
  def change
    remove_column :sibling_existing_parents, :class, :string
  end
end
