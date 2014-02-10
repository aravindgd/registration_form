class CreatePreSchools < ActiveRecord::Migration
  def change
    create_table :pre_schools do |t|
      t.string :copy_of_fee_chalan
      t.references :student_cat_reg_form, index: true

      t.timestamps
    end
  end
end
