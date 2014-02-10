class CreateAlumnis < ActiveRecord::Migration
  def change
    create_table :alumnis do |t|
      t.integer :year_of_passing
      t.string :mark_sheet_proof
      t.references :student_cat_reg_form, index: true

      t.timestamps
    end
  end
end
