class CreateSiblingExistingParents < ActiveRecord::Migration
  def change
    create_table :sibling_existing_parents do |t|
      t.string :class
      t.string :sec
      t.string :admission_num

      t.timestamps
    end
  end
end
