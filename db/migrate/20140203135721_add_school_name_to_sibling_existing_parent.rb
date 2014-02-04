class AddSchoolNameToSiblingExistingParent < ActiveRecord::Migration
  def change
    add_column :sibling_existing_parents, :school_name, :string
  end
end
