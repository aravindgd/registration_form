class CreateStaffChildren < ActiveRecord::Migration
  def change
    create_table :staff_children do |t|
      t.string :branch
      t.references :student_cat_reg_form, index: true

      t.timestamps
    end
  end
end
