class AddClassOfSiblingToSiblingExistingParent < ActiveRecord::Migration
  def change
    add_column :sibling_existing_parents, :class_of_sibling, :string
  end
end
